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

extension Bmeip {
    /// UnbindRsList请求参数结构体
    public struct UnbindRsListRequest: TCRequestModel {
        /// 物理机绑定的EIP列表
        public let eipRsList: [EipRsMap]

        public init(eipRsList: [EipRsMap]) {
            self.eipRsList = eipRsList
        }

        enum CodingKeys: String, CodingKey {
            case eipRsList = "EipRsList"
        }
    }

    /// UnbindRsList返回参数结构体
    public struct UnbindRsListResponse: TCResponseModel {
        /// 解绑操作的异步任务ID，可以通过查询EIP任务状态查询任务状态
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 批量解绑物理机弹性公网IP
    ///
    /// 批量解绑物理机弹性公网IP接口
    @inlinable
    public func unbindRsList(_ input: UnbindRsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindRsListResponse> {
        self.client.execute(action: "UnbindRsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量解绑物理机弹性公网IP
    ///
    /// 批量解绑物理机弹性公网IP接口
    @inlinable
    public func unbindRsList(_ input: UnbindRsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindRsListResponse {
        try await self.client.execute(action: "UnbindRsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量解绑物理机弹性公网IP
    ///
    /// 批量解绑物理机弹性公网IP接口
    @inlinable
    public func unbindRsList(eipRsList: [EipRsMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindRsListResponse> {
        self.unbindRsList(UnbindRsListRequest(eipRsList: eipRsList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量解绑物理机弹性公网IP
    ///
    /// 批量解绑物理机弹性公网IP接口
    @inlinable
    public func unbindRsList(eipRsList: [EipRsMap], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindRsListResponse {
        try await self.unbindRsList(UnbindRsListRequest(eipRsList: eipRsList), region: region, logger: logger, on: eventLoop)
    }
}
