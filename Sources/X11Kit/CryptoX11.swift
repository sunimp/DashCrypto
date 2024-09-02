//
//  CryptoX11.swift
//
//  Created by Sun on 2022/8/25.
//

import Foundation
import X11_implementation

public enum X11Kit {
    public static func x11(_ data: Data) -> Data {
        CryptoX11Hash.x11(data)
    }

    public static func blake512(_ data: Data) -> Data {
        CryptoX11Hash.blake512(data)
    }

    public static func bmw512(_ data: Data) -> Data {
        CryptoX11Hash.bmw512(data)
    }

    public static func groestl512(_ data: Data) -> Data {
        CryptoX11Hash.groestl512(data)
    }

    public static func skein512(_ data: Data) -> Data {
        CryptoX11Hash.skein512(data)
    }

    public static func jh512(_ data: Data) -> Data {
        CryptoX11Hash.jh512(data)
    }

    public static func keccak512(_ data: Data) -> Data {
        CryptoX11Hash.keccak512(data)
    }

    public static func luffa512(_ data: Data) -> Data {
        CryptoX11Hash.luffa512(data)
    }

    public static func cubehash512(_ data: Data) -> Data {
        CryptoX11Hash.cubehash512(data)
    }

    public static func shavite512(_ data: Data) -> Data {
        CryptoX11Hash.shavite512(data)
    }

    public static func simd512(_ data: Data) -> Data {
        CryptoX11Hash.simd512(data)
    }

    public static func echo512(_ data: Data) -> Data {
        CryptoX11Hash.echo512(data)
    }
}
