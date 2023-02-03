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
    /// GetDidServiceList请求参数结构体
    public struct GetDidServiceListRequest: TCRequestModel {
        /// 1: 以网络维度输出, 0: 以服务维度输出
        public let type: UInt64

        public init(type: UInt64) {
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
        }
    }

    /// GetDidServiceList返回参数结构体
    public struct GetDidServiceListResponse: TCResponseModel {
        /// DID服务列表
        public let didServiceList: [DidServiceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case didServiceList = "DidServiceList"
            case requestId = "RequestId"
        }
    }

    /// 获取DID服务列表
    @inlinable
    public func getDidServiceList(_ input: GetDidServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidServiceListResponse> {
        self.client.execute(action: "GetDidServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DID服务列表
    @inlinable
    public func getDidServiceList(_ input: GetDidServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidServiceListResponse {
        try await self.client.execute(action: "GetDidServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DID服务列表
    @inlinable
    public func getDidServiceList(type: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDidServiceListResponse> {
        let input = GetDidServiceListRequest(type: type)
        return self.client.execute(action: "GetDidServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DID服务列表
    @inlinable
    public func getDidServiceList(type: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidServiceListResponse {
        let input = GetDidServiceListRequest(type: type)
        return try await self.client.execute(action: "GetDidServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
