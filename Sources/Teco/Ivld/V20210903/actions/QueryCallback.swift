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

extension Ivld {
    /// QueryCallback请求参数结构体
    public struct QueryCallbackRequest: TCRequestModel {
        public init() {
        }
    }

    /// QueryCallback返回参数结构体
    public struct QueryCallbackResponse: TCResponseModel {
        /// 任务分析完成后回调地址
        public let taskFinishNotifyURL: String

        /// 媒体导入完成后回调地址
        public let mediaFinishNotifyURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskFinishNotifyURL = "TaskFinishNotifyURL"
            case mediaFinishNotifyURL = "MediaFinishNotifyURL"
            case requestId = "RequestId"
        }
    }

    /// 查询回调设置
    ///
    /// 查询用户回调设置
    @inlinable
    public func queryCallback(_ input: QueryCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCallbackResponse> {
        self.client.execute(action: "QueryCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询回调设置
    ///
    /// 查询用户回调设置
    @inlinable
    public func queryCallback(_ input: QueryCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCallbackResponse {
        try await self.client.execute(action: "QueryCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询回调设置
    ///
    /// 查询用户回调设置
    @inlinable
    public func queryCallback(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCallbackResponse> {
        let input = QueryCallbackRequest()
        return self.client.execute(action: "QueryCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询回调设置
    ///
    /// 查询用户回调设置
    @inlinable
    public func queryCallback(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCallbackResponse {
        let input = QueryCallbackRequest()
        return try await self.client.execute(action: "QueryCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
