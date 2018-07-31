# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Encoders and decoders for the PostgreSQL's binary format"
HOMEPAGE="https://github.com/nikita-volkov/postgresql-binary"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?] <dev-haskell/aeson-2:=[profile?]
	>=dev-haskell/base-prelude-0.1.19:=[profile?] <dev-haskell/base-prelude-2:=[profile?]
	>=dev-haskell/binary-parser-0.5:=[profile?] <dev-haskell/binary-parser-0.6:=[profile?]
	>=dev-haskell/bytestring-strict-builder-0.4.2:=[profile?] <dev-haskell/bytestring-strict-builder-0.5:=[profile?]
	>=dev-haskell/loch-th-0.2:=[profile?] <dev-haskell/loch-th-0.3:=[profile?]
	>=dev-haskell/network-ip-0.2:=[profile?] <dev-haskell/network-ip-1:=[profile?]
	>=dev-haskell/placeholders-0.1:=[profile?] <dev-haskell/placeholders-0.2:=[profile?]
	>=dev-haskell/scientific-0.2:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?] <dev-haskell/uuid-1.4:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/conversion-1 <dev-haskell/conversion-2
		>=dev-haskell/conversion-bytestring-1 <dev-haskell/conversion-bytestring-2
		>=dev-haskell/conversion-text-1 <dev-haskell/conversion-text-2
		>=dev-haskell/json-ast-0.3 <dev-haskell/json-ast-0.4
		>=dev-haskell/postgresql-libpq-0.9 <dev-haskell/postgresql-libpq-0.10
		>=dev-haskell/quickcheck-2.8.1
		>=dev-haskell/quickcheck-instances-0.3.11 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/rerebase-1.0.2 <dev-haskell/rerebase-2
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.10
		>=dev-haskell/tasty-smallcheck-0.8 <dev-haskell/tasty-smallcheck-0.9 )
"

src_prepare() {
	default

	cabal_chdeps \
		'tasty == 0.11.*' 'tasty >= 0.11' \
		'tasty-quickcheck == 0.8.*' 'tasty-quickcheck >= 0.8 && < 0.10' \
		'tasty-hunit == 0.9.*' 'tasty-hunit >= 0.9' \
		'QuickCheck >= 2.8.1 && < 2.10' 'QuickCheck >= 2.8.1'

}
