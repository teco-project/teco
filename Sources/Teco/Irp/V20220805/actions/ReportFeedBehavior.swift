//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Irp {
    /// 上报信息流行为数据
    ///
    /// 上报信息流场景内的行为数据，随着数据的积累，模型的效果会逐渐稳定。
    @inlinable
    public func reportFeedBehavior(_ input: ReportFeedBehaviorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReportFeedBehaviorResponse > {
        self.client.execute(action: "ReportFeedBehavior", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 上报信息流行为数据
    ///
    /// 上报信息流场景内的行为数据，随着数据的积累，模型的效果会逐渐稳定。
    @inlinable
    public func reportFeedBehavior(_ input: ReportFeedBehaviorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportFeedBehaviorResponse {
        try await self.client.execute(action: "ReportFeedBehavior", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ReportFeedBehavior请求参数结构体
    public struct ReportFeedBehaviorRequest: TCRequestModel {
        /// 实例ID，在控制台获取
        public let instanceId: String
        
        /// 上报的行为数据数组，数量不超过50
        public let feedBehaviorList: [FeedBehaviorInfo]
        
        public init (instanceId: String, feedBehaviorList: [FeedBehaviorInfo]) {
            self.instanceId = instanceId
            self.feedBehaviorList = feedBehaviorList
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case feedBehaviorList = "FeedBehaviorList"
        }
    }
    
    /// ReportFeedBehavior返回参数结构体
    public struct ReportFeedBehaviorResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}