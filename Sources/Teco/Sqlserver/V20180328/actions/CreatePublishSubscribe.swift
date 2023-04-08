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

extension Sqlserver {
    /// CreatePublishSubscribe请求参数结构体
    public struct CreatePublishSubscribeRequest: TCRequestModel {
        /// 发布实例ID，形如mssql-j8kv137v
        public let publishInstanceId: String

        /// 订阅实例ID，形如mssql-j8kv137v
        public let subscribeInstanceId: String

        /// 数据库的订阅发布关系集合
        public let databaseTupleSet: [DatabaseTuple]

        /// 发布订阅的名称，默认值为：default_name
        public let publishSubscribeName: String?

        public init(publishInstanceId: String, subscribeInstanceId: String, databaseTupleSet: [DatabaseTuple], publishSubscribeName: String? = nil) {
            self.publishInstanceId = publishInstanceId
            self.subscribeInstanceId = subscribeInstanceId
            self.databaseTupleSet = databaseTupleSet
            self.publishSubscribeName = publishSubscribeName
        }

        enum CodingKeys: String, CodingKey {
            case publishInstanceId = "PublishInstanceId"
            case subscribeInstanceId = "SubscribeInstanceId"
            case databaseTupleSet = "DatabaseTupleSet"
            case publishSubscribeName = "PublishSubscribeName"
        }
    }

    /// CreatePublishSubscribe返回参数结构体
    public struct CreatePublishSubscribeResponse: TCResponseModel {
        /// 流程ID，可通过接口DescribeFlowStatus查询立即切换升级任务的状态。
        public let flowId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建发布订阅
    ///
    /// 本接口（CreatePublishSubscribe）用于创建两个数据库之间的发布订阅关系。作为订阅者，不能再充当发布者，作为发布者可以有多个订阅者实例。
    @inlinable
    public func createPublishSubscribe(_ input: CreatePublishSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePublishSubscribeResponse> {
        self.client.execute(action: "CreatePublishSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建发布订阅
    ///
    /// 本接口（CreatePublishSubscribe）用于创建两个数据库之间的发布订阅关系。作为订阅者，不能再充当发布者，作为发布者可以有多个订阅者实例。
    @inlinable
    public func createPublishSubscribe(_ input: CreatePublishSubscribeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePublishSubscribeResponse {
        try await self.client.execute(action: "CreatePublishSubscribe", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建发布订阅
    ///
    /// 本接口（CreatePublishSubscribe）用于创建两个数据库之间的发布订阅关系。作为订阅者，不能再充当发布者，作为发布者可以有多个订阅者实例。
    @inlinable
    public func createPublishSubscribe(publishInstanceId: String, subscribeInstanceId: String, databaseTupleSet: [DatabaseTuple], publishSubscribeName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePublishSubscribeResponse> {
        self.createPublishSubscribe(.init(publishInstanceId: publishInstanceId, subscribeInstanceId: subscribeInstanceId, databaseTupleSet: databaseTupleSet, publishSubscribeName: publishSubscribeName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建发布订阅
    ///
    /// 本接口（CreatePublishSubscribe）用于创建两个数据库之间的发布订阅关系。作为订阅者，不能再充当发布者，作为发布者可以有多个订阅者实例。
    @inlinable
    public func createPublishSubscribe(publishInstanceId: String, subscribeInstanceId: String, databaseTupleSet: [DatabaseTuple], publishSubscribeName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePublishSubscribeResponse {
        try await self.createPublishSubscribe(.init(publishInstanceId: publishInstanceId, subscribeInstanceId: subscribeInstanceId, databaseTupleSet: databaseTupleSet, publishSubscribeName: publishSubscribeName), region: region, logger: logger, on: eventLoop)
    }
}
