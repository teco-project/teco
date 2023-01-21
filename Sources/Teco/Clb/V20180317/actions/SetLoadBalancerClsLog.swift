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

extension Clb {
    /// SetLoadBalancerClsLog请求参数结构体
    public struct SetLoadBalancerClsLogRequest: TCRequestModel {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 日志服务(CLS)的日志集 ID。
        /// <li>增加和更新日志主题时可调用 [DescribeLogsets](https://cloud.tencent.com/document/product/614/56454) 接口获取日志集 ID。</li>
        /// <li>删除日志主题时，此参数填写为null即可。</li>
        public let logSetId: String

        /// 日志服务(CLS)的日志主题 ID。
        /// <li>增加和更新日志主题时可调用 [DescribeTopics](https://cloud.tencent.com/document/product/614/58624) 接口获取日志主题 ID。</li>
        /// <li>删除日志主题时，此参数填写为null即可。</li>
        public let logTopicId: String

        /// 日志类型：
        /// <li>ACCESS：访问日志</li>
        /// <li>HEALTH：健康检查日志</li>
        /// 默认为ACCESS。
        public let logType: String?

        public init(loadBalancerId: String, logSetId: String, logTopicId: String, logType: String? = nil) {
            self.loadBalancerId = loadBalancerId
            self.logSetId = logSetId
            self.logTopicId = logTopicId
            self.logType = logType
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case logSetId = "LogSetId"
            case logTopicId = "LogTopicId"
            case logType = "LogType"
        }
    }

    /// SetLoadBalancerClsLog返回参数结构体
    public struct SetLoadBalancerClsLogResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置负载均衡的日志服务主题
    ///
    /// 增加、删除、更新负载均衡的日志服务(CLS)主题。
    @inlinable @discardableResult
    public func setLoadBalancerClsLog(_ input: SetLoadBalancerClsLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetLoadBalancerClsLogResponse> {
        self.client.execute(action: "SetLoadBalancerClsLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置负载均衡的日志服务主题
    ///
    /// 增加、删除、更新负载均衡的日志服务(CLS)主题。
    @inlinable @discardableResult
    public func setLoadBalancerClsLog(_ input: SetLoadBalancerClsLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetLoadBalancerClsLogResponse {
        try await self.client.execute(action: "SetLoadBalancerClsLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置负载均衡的日志服务主题
    ///
    /// 增加、删除、更新负载均衡的日志服务(CLS)主题。
    @inlinable @discardableResult
    public func setLoadBalancerClsLog(loadBalancerId: String, logSetId: String, logTopicId: String, logType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetLoadBalancerClsLogResponse> {
        self.setLoadBalancerClsLog(SetLoadBalancerClsLogRequest(loadBalancerId: loadBalancerId, logSetId: logSetId, logTopicId: logTopicId, logType: logType), region: region, logger: logger, on: eventLoop)
    }

    /// 设置负载均衡的日志服务主题
    ///
    /// 增加、删除、更新负载均衡的日志服务(CLS)主题。
    @inlinable @discardableResult
    public func setLoadBalancerClsLog(loadBalancerId: String, logSetId: String, logTopicId: String, logType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetLoadBalancerClsLogResponse {
        try await self.setLoadBalancerClsLog(SetLoadBalancerClsLogRequest(loadBalancerId: loadBalancerId, logSetId: logSetId, logTopicId: logTopicId, logType: logType), region: region, logger: logger, on: eventLoop)
    }
}
