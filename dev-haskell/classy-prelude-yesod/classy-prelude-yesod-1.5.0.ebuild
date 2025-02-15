# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile" # disable haddock hoogle hscolour: haddock: internal error: internal: extractDecl
inherit haskell-cabal

DESCRIPTION="Provide a classy prelude including common Yesod functionality"
HOMEPAGE="https://github.com/snoyberg/mono-traversable#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/classy-prelude-1.5.0:=[profile?] <dev-haskell/classy-prelude-1.5.1:=[profile?]
	>=dev-haskell/classy-prelude-conduit-1.5.0:=[profile?] <dev-haskell/classy-prelude-conduit-1.5.1:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/persistent-1.1:=[profile?]
	>=dev-haskell/yesod-1.2:=[profile?]
	dev-haskell/yesod-newsfeed:=[profile?]
	dev-haskell/yesod-static:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"
