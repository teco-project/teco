//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tdid {
    /// GetDidClusterList请求参数结构体
    public struct GetDidClusterListRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetDidClusterList返回参数结构体
    public struct GetDidClusterListResponse: TCResponseModel {
        /// DID网络列表
        public let didClusterList: [DidCluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case didClusterList = "DidClusterList"
            case requestId = "RequestId"
        }
    }

    /// 获取DID网络列表
    ///
    /// 获取用户的DID网络列表
    @inlinable
    public func getDidClusterList(_ input: GetDidClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidClusterListResponse> {
        self.client.execute(action: "GetDidClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DID网络列表
    ///
    /// 获取用户的DID网络列表
    @inlinable
    public func getDidClusterList(_ input: GetDidClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidClusterListResponse {
        try await self.client.execute(action: "GetDidClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DID网络列表
    ///
    /// 获取用户的DID网络列表
    @inlinable
    public func getDidClusterList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidClusterListResponse> {
        self.getDidClusterList(GetDidClusterListRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DID网络列表
    ///
    /// 获取用户的DID网络列表
    @inlinable
    public func getDidClusterList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidClusterListResponse {
        try await self.getDidClusterList(GetDidClusterListRequest(), region: region, logger: logger, on: eventLoop)
    }
}
