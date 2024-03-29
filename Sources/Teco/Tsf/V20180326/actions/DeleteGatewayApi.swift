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

extension Tsf {
    /// DeleteGatewayApi请求参数结构体
    public struct DeleteGatewayApiRequest: TCRequest {
        /// 分组ID
        public let groupId: String

        /// Api ID 数组
        public let apiList: [String]

        public init(groupId: String, apiList: [String]) {
            self.groupId = groupId
            self.apiList = apiList
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case apiList = "ApiList"
        }
    }

    /// DeleteGatewayApi返回参数结构体
    public struct DeleteGatewayApiResponse: TCResponse {
        /// 是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 批量删除API
    @inlinable
    public func deleteGatewayApi(_ input: DeleteGatewayApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGatewayApiResponse> {
        self.client.execute(action: "DeleteGatewayApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除API
    @inlinable
    public func deleteGatewayApi(_ input: DeleteGatewayApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGatewayApiResponse {
        try await self.client.execute(action: "DeleteGatewayApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除API
    @inlinable
    public func deleteGatewayApi(groupId: String, apiList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGatewayApiResponse> {
        self.deleteGatewayApi(.init(groupId: groupId, apiList: apiList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除API
    @inlinable
    public func deleteGatewayApi(groupId: String, apiList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGatewayApiResponse {
        try await self.deleteGatewayApi(.init(groupId: groupId, apiList: apiList), region: region, logger: logger, on: eventLoop)
    }
}
