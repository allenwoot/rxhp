require 'rxhp/html_element'
require 'rxhp/html_self_closing_element'
require 'rxhp/html_singleton_element'

require 'rxhp/data/html/attributes'

require 'uri'

module Rxhp
  # Definitions of all standard HTML 4.01 and HTML 5 elements.
  #
  # All the classes are created when this file is loaded, regardless
  # of usage.
  #
  # There are three common superclasses:
  # - HtmlElement - standard elements
  # - HtmlSelfClosingElement - elements where in HTML, the closing tag is
  #   optional - for example, <p>, <li>, and <body>
  # - HtmlSingletonElement - not only is the closing tag optional, but
  #   child elements are forbidden - for example, <br> and <img>
  #
  # 'Special' classes are defined in rxhp/tags/ - for example, the HTML
  # element in Rxhp is defined to add a doctype, depending on the formatter
  # settings.
  module Html
    TAGS = {
      :abbr => {},
      :acronym => {},
      :address => {},
      :applet => {},
      :area => {:is_a => HtmlSingletonElement},
      :article => {},
      :aside => {},
      :audio => {},
      :b => {},
      :base => {
        :is_a => HtmlSingletonElement,
        :attributes => {
          :href => [String, ::URI],
          :target => String,
        },
      },
      :basefont => {},
      :bdo => {},
      :bdi => {},
      :big => {},
      :blockquote => {},
      :body => {:is_a => HtmlSelfClosingElement},
      :br => {:is_a => HtmlSingletonElement},
      :button => {},
      :canvas => {},
      :caption => {},
      :center => {},
      :cite => {},
      :code => {},
      :col => {:is_a => HtmlSingletonElement},
      :colgroup => {:is_a => HtmlSelfClosingElement},
      :command => {:is_a => HtmlSingletonElement},
      :datalist => {},
      :dd => {:is_a => HtmlSelfClosingElement},
      :del => {},
      :details => {},
      :dfn => {},
      :dir => {},
      :div => {},
      :dl => {},
      :dt => {:is_a => HtmlSelfClosingElement},
      :em => {},
      :embed => {:is_a => HtmlSingletonElement},
      :fieldset => {},
      :figcaption => {},
      :figure => {},
      :font => {},
      :footer => {},
      :form => {},
      :frame => {},
      :frameset => {},
      :h1 => {},
      :h2 => {},
      :h3 => {},
      :h4 => {},
      :h5 => {},
      :h6 => {},
      :head => {:is_a => HtmlSelfClosingElement},
      :header => {},
      :hgroup => {},
      :hr => {:is_a => HtmlSingletonElement},
      :html => {:require => 'rxhp/tags/html_tag'},
      :i => {},
      :iframe => {},
      :img => {:is_a => HtmlSingletonElement},
      :input => {:is_a => HtmlSingletonElement},
      :ins => {},
      :isindex => {},
      :kbd => {},
      :keygen => {:is_a => HtmlSingletonElement},
      :label => {},
      :legend => {},
      :li => {:is_a => HtmlSelfClosingElement},
      :link => {:is_a => HtmlSingletonElement},
      :map => {},
      :mark => {},
      :menu => {},
      :meta => {:is_a => HtmlSingletonElement},
      :meter => {},
      :nav => {},
      :noframes => {},
      :noscript => {},
      :object => {},
      :ol => {},
      :optgroup => {:is_a => HtmlSelfClosingElement},
      :option => {:is_a => HtmlSelfClosingElement},
      :output => {},
      :p => {:is_a => HtmlSelfClosingElement},
      :param => {:is_a => HtmlSingletonElement},
      :pre => {},
      :progress => {},
      :rb => {},
      :rt => {},
      :ruby => {},
      :q => {},
      :s => {},
      :samp => {},
      :script => {},
      :section => {},
      :select => {},
      :small => {},
      :source => {:is_a => HtmlSingletonElement},
      :span => {},
      :strike => {},
      :strong => {},
      :style => {},
      :sub => {},
      :summary => {},
      :sup => {},
      :table => {},
      :tbody => {:is_a => HtmlSelfClosingElement},
      :td => {:is_a => HtmlSelfClosingElement},
      :textarea => {},
      :tfoot => {:is_a => HtmlSelfClosingElement},
      :th => {:is_a => HtmlSelfClosingElement},
      :thead => {:is_a => HtmlSelfClosingElement},
      :time => {},
      :title => {},
      :tr => {:is_a => HtmlSelfClosingElement},
      :track => {:is_a => HtmlSingletonElement},
      :tt => {},
      :u => {},
      :ul => {},
      :var => {},
      :video => {},
      :wbr => {:is_a => HtmlSingletonElement},
    }
  end
end
