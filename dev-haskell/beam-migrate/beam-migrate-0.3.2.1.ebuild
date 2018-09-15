# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="SQL DDL support and migrations support library for Beam"
HOMEPAGE="https://travis.athougies.net/projects/beam.html"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/beam-core-0.7:=[profile?] <dev-haskell/beam-core-0.8:=[profile?]
	>=dev-haskell/dependent-map-0.2:=[profile?] <dev-haskell/dependent-map-0.3:=[profile?]
	>=dev-haskell/dependent-sum-0.4:=[profile?] <dev-haskell/dependent-sum-0.5:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.2:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18:=[profile?] <dev-haskell/haskell-src-exts-1.21:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parallel-3.2:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/pqueue-1.3:=[profile?] <dev-haskell/pqueue-1.5:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

# I don't see a need for this build flag
#IUSE="werror"
#src_configure() {
#	haskell-cabal_src_configure \
#		$(cabal_flag werror werror)
#}
