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

extension Tdid {
    /// GetConsortiumClusterList请求参数结构体
    public struct GetConsortiumClusterListRequest: TCRequestModel {
        /// 联盟id
        public let consortiumId: UInt64

        public init(consortiumId: UInt64) {
            self.consortiumId = consortiumId
        }

        enum CodingKeys: String, CodingKey {
            case consortiumId = "ConsortiumId"
        }
    }

    /// GetConsortiumClusterList返回参数结构体
    public struct GetConsortiumClusterListResponse: TCResponseModel {
        /// 网络列表
        public let clusterList: [BcosClusterItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterList = "ClusterList"
            case requestId = "RequestId"
        }
    }

    /// 获取联盟bcos网络列表
    @inlinable
    public func getConsortiumClusterList(_ input: GetConsortiumClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConsortiumClusterListResponse> {
        self.client.execute(action: "GetConsortiumClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取联盟bcos网络列表
    @inlinable
    public func getConsortiumClusterList(_ input: GetConsortiumClusterListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetConsortiumClusterListResponse {
        try await self.client.execute(action: "GetConsortiumClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取联盟bcos网络列表
    @inlinable
    public func getConsortiumClusterList(consortiumId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConsortiumClusterListResponse> {
        let input = GetConsortiumClusterListRequest(consortiumId: consortiumId)
        return self.client.execute(action: "GetConsortiumClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取联盟bcos网络列表
    @inlinable
    public func getConsortiumClusterList(consortiumId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetConsortiumClusterListResponse {
        let input = GetConsortiumClusterListRequest(consortiumId: consortiumId)
        return try await self.client.execute(action: "GetConsortiumClusterList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
