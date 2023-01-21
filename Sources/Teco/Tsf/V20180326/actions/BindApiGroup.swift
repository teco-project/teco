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

extension Tsf {
    /// BindApiGroup请求参数结构体
    public struct BindApiGroupRequest: TCRequestModel {
        /// 分组绑定网关列表
        public let groupGatewayList: [GatewayGroupIds]

        public init(groupGatewayList: [GatewayGroupIds]) {
            self.groupGatewayList = groupGatewayList
        }

        enum CodingKeys: String, CodingKey {
            case groupGatewayList = "GroupGatewayList"
        }
    }

    /// BindApiGroup返回参数结构体
    public struct BindApiGroupResponse: TCResponseModel {
        /// 返回结果，成功失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 网关与API分组批量绑定
    @inlinable
    public func bindApiGroup(_ input: BindApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindApiGroupResponse> {
        self.client.execute(action: "BindApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 网关与API分组批量绑定
    @inlinable
    public func bindApiGroup(_ input: BindApiGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindApiGroupResponse {
        try await self.client.execute(action: "BindApiGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 网关与API分组批量绑定
    @inlinable
    public func bindApiGroup(groupGatewayList: [GatewayGroupIds], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindApiGroupResponse> {
        self.bindApiGroup(BindApiGroupRequest(groupGatewayList: groupGatewayList), region: region, logger: logger, on: eventLoop)
    }

    /// 网关与API分组批量绑定
    @inlinable
    public func bindApiGroup(groupGatewayList: [GatewayGroupIds], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindApiGroupResponse {
        try await self.bindApiGroup(BindApiGroupRequest(groupGatewayList: groupGatewayList), region: region, logger: logger, on: eventLoop)
    }
}
