//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Tdid {
    /// GetPublicKey请求参数结构体
    public struct GetPublicKeyRequest: TCRequestModel {
        /// did的具体号码
        public let did: String

        public init(did: String) {
            self.did = did
        }

        enum CodingKeys: String, CodingKey {
            case did = "Did"
        }
    }

    /// GetPublicKey返回参数结构体
    public struct GetPublicKeyResponse: TCResponseModel {
        /// DID的具体信息
        public let did: String

        /// 公钥
        public let publicKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case did = "Did"
            case publicKey = "PublicKey"
            case requestId = "RequestId"
        }
    }

    /// 查看公钥
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getPublicKey(_ input: GetPublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPublicKeyResponse> {
        fatalError("GetPublicKey is no longer available.")
    }

    /// 查看公钥
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getPublicKey(_ input: GetPublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPublicKeyResponse {
        fatalError("GetPublicKey is no longer available.")
    }

    /// 查看公钥
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getPublicKey(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPublicKeyResponse> {
        fatalError("GetPublicKey is no longer available.")
    }

    /// 查看公钥
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getPublicKey(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPublicKeyResponse {
        fatalError("GetPublicKey is no longer available.")
    }
}
