package joolz.theme 
{
	import feathers.controls.text.StageTextTextEditor;
	import feathers.controls.text.TextFieldTextRenderer;
	import feathers.core.FeathersControl;
	import feathers.core.ITextEditor;
	import feathers.core.ITextRenderer;
	import feathers.display.Scale9Image;
	import feathers.textures.Scale9Textures;
	import feathers.themes.StyleNameFunctionTheme;
	import flash.geom.Rectangle;
	import flash.text.TextFormat;
	import starling.display.DisplayObject;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import feathers.controls.Button;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class JoolzTheme extends StyleNameFunctionTheme
	{
		[Embed(source="../../../lib/la_theme_assets/la_map.atf", mimeType="application/octet-stream")]
		private static const ATLAS_BITMAP:Class;

		[Embed(source="../../../lib/la_theme_assets/la_map.xml", mimeType="application/octet-stream")]
		private static const ATLAS_XML:Class;
		
		[Embed(source="../../../lib/fonts/Casual Hardcore.otf",
		fontName = "CasualHardcore", 
		mimeType = "application/x-font-truetype", 
		advancedAntiAliasing="true",
		embedAsCFF="false")]
		public static var CasualHardcore:Class;
				
		/**
		 * @private
		 */
		protected var _scaleToDPI:Boolean;

		/**
		 * Indicates if the theme scales skins to match the screen density of
		 * the device.
		 */
		public function get scaleToDPI():Boolean
		{
			return this._scaleToDPI;
		}
		
		private var atlas:TextureAtlas; 
		
		public function JoolzTheme(scaleToDPI:Boolean = true) 
		{
			this._scaleToDPI = scaleToDPI;
			this.createTextureAtlas();
			this.initialize();
		}
		
		private function createTextureAtlas():void
		{
			var atlasTexture:Texture = Texture.fromEmbeddedAsset( ATLAS_BITMAP ); 
			var atlasXML:XML = XML( new ATLAS_XML() );
			this.atlas = new TextureAtlas( atlasTexture, atlasXML );
		}
		
		private function initialize () :void {
			initializeGlobals();
			initializeStyleProviders();
		}
		
		private function initializeGlobals():void 
		{
			FeathersControl.defaultTextRendererFactory = function():ITextRenderer
			{
				var tr:TextFieldTextRenderer = new TextFieldTextRenderer();
				return tr; 
			}; new TextFieldTextRenderer 

			FeathersControl.defaultTextEditorFactory = function():ITextEditor
			{
				return new StageTextTextEditor();
			};
		}
		
		
		private function initializeStyleProviders () :void {
			this.getStyleProviderForClass( Button ).setFunctionForStyleName('mainButton', this.setMainButtonStyles);
		}
		
		private function setMainButtonStyles( button:Button ):void
		{
			button.defaultSkin = new Scale9Image( 
			new Scale9Textures(this.atlas.getTexture( "btnDefault" ), new Rectangle(0,0,200,33))) as DisplayObject;
			button.downSkin = new Scale9Image( 
			new Scale9Textures(this.atlas.getTexture( "btnDown" ), new Rectangle(0,0,200,33))) as DisplayObject;
			button.hoverSkin = button.downSkin;
			
			button.padding = 20;
			button.gap = 15;
			button.paddingTop = 25; 
			
			button.defaultLabelProperties.embedFonts = true; 
			button.defaultLabelProperties.textFormat = new TextFormat("CasualHardcore", 
			24, 0xffffff); 
			
			button.downLabelProperties.embedFonts = true;
			button.hoverLabelProperties.embedFonts = true;
			button.downLabelProperties.textFormat = 
			button.hoverLabelProperties.textFormat = new TextFormat("CasualHardcore", 
			24, 0x222222); 
		}
		
		
	}

}