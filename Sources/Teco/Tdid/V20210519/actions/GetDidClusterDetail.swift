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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tdid {
    /// GetDidClusterDetail请求参数结构体
    public struct GetDidClusterDetailRequest: TCRequestModel {
        /// DID网络ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// GetDidClusterDetail返回参数结构体
    public struct GetDidClusterDetailResponse: TCResponseModel {
        /// 网络ID
        public let clusterId: String

        /// 组织名称
        public let consortiumName: String

        /// 区块链组织名称
        public let chainAgency: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case consortiumName = "ConsortiumName"
            case chainAgency = "ChainAgency"
            case requestId = "RequestId"
        }
    }

    /// 获取DID网络详情
    ///
    /// 获取DID区块链网络详情
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getDidClusterDetail(_ input: GetDidClusterDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidClusterDetailResponse> {
        fatalError("GetDidClusterDetail is no longer available.")
    }

    /// 获取DID网络详情
    ///
    /// 获取DID区块链网络详情
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getDidClusterDetail(_ input: GetDidClusterDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidClusterDetailResponse {
        fatalError("GetDidClusterDetail is no longer available.")
    }

    /// 获取DID网络详情
    ///
    /// 获取DID区块链网络详情
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getDidClusterDetail(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidClusterDetailResponse> {
        fatalError("GetDidClusterDetail is no longer available.")
    }

    /// 获取DID网络详情
    ///
    /// 获取DID区块链网络详情
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getDidClusterDetail(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidClusterDetailResponse {
        fatalError("GetDidClusterDetail is no longer available.")
    }
}
