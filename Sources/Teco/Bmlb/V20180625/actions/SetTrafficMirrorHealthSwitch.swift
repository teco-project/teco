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

extension Bmlb {
    /// SetTrafficMirrorHealthSwitch请求参数结构体
    public struct SetTrafficMirrorHealthSwitchRequest: TCRequest {
        /// 流量镜像实例ID。
        public let trafficMirrorId: String

        /// 健康检查开关，0：关闭，1：打开
        public let healthSwitch: Int64

        /// 健康检查判断健康的次数，最小值2，最大值10。
        public let healthNum: Int64?

        /// 健康检查判断不健康的次数，最小值2，最大值10。
        public let unhealthNum: Int64?

        /// 健康检查间隔，单位：秒，最小值5，最大值300。
        public let intervalTime: Int64?

        /// 检查的域名配置。
        public let httpCheckDomain: String?

        /// 检查的路径配置。
        public let httpCheckPath: String?

        /// 健康检查中认为健康的HTTP返回码的组合。可选值为1~5的集合，1表示HTTP返回码为1xx认为健康。2表示HTTP返回码为2xx认为健康。3表示HTTP返回码为3xx认为健康。4表示HTTP返回码为4xx认为健康。5表示HTTP返回码为5xx认为健康。
        public let httpCodes: [Int64]?

        public init(trafficMirrorId: String, healthSwitch: Int64, healthNum: Int64? = nil, unhealthNum: Int64? = nil, intervalTime: Int64? = nil, httpCheckDomain: String? = nil, httpCheckPath: String? = nil, httpCodes: [Int64]? = nil) {
            self.trafficMirrorId = trafficMirrorId
            self.healthSwitch = healthSwitch
            self.healthNum = healthNum
            self.unhealthNum = unhealthNum
            self.intervalTime = intervalTime
            self.httpCheckDomain = httpCheckDomain
            self.httpCheckPath = httpCheckPath
            self.httpCodes = httpCodes
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case healthSwitch = "HealthSwitch"
            case healthNum = "HealthNum"
            case unhealthNum = "UnhealthNum"
            case intervalTime = "IntervalTime"
            case httpCheckDomain = "HttpCheckDomain"
            case httpCheckPath = "HttpCheckPath"
            case httpCodes = "HttpCodes"
        }
    }

    /// SetTrafficMirrorHealthSwitch返回参数结构体
    public struct SetTrafficMirrorHealthSwitchResponse: TCResponse {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 设置流量镜像的健康检查参数
    ///
    /// 设置流量镜像的健康检查参数。
    @inlinable
    public func setTrafficMirrorHealthSwitch(_ input: SetTrafficMirrorHealthSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTrafficMirrorHealthSwitchResponse> {
        self.client.execute(action: "SetTrafficMirrorHealthSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置流量镜像的健康检查参数
    ///
    /// 设置流量镜像的健康检查参数。
    @inlinable
    public func setTrafficMirrorHealthSwitch(_ input: SetTrafficMirrorHealthSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetTrafficMirrorHealthSwitchResponse {
        try await self.client.execute(action: "SetTrafficMirrorHealthSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置流量镜像的健康检查参数
    ///
    /// 设置流量镜像的健康检查参数。
    @inlinable
    public func setTrafficMirrorHealthSwitch(trafficMirrorId: String, healthSwitch: Int64, healthNum: Int64? = nil, unhealthNum: Int64? = nil, intervalTime: Int64? = nil, httpCheckDomain: String? = nil, httpCheckPath: String? = nil, httpCodes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTrafficMirrorHealthSwitchResponse> {
        self.setTrafficMirrorHealthSwitch(.init(trafficMirrorId: trafficMirrorId, healthSwitch: healthSwitch, healthNum: healthNum, unhealthNum: unhealthNum, intervalTime: intervalTime, httpCheckDomain: httpCheckDomain, httpCheckPath: httpCheckPath, httpCodes: httpCodes), region: region, logger: logger, on: eventLoop)
    }

    /// 设置流量镜像的健康检查参数
    ///
    /// 设置流量镜像的健康检查参数。
    @inlinable
    public func setTrafficMirrorHealthSwitch(trafficMirrorId: String, healthSwitch: Int64, healthNum: Int64? = nil, unhealthNum: Int64? = nil, intervalTime: Int64? = nil, httpCheckDomain: String? = nil, httpCheckPath: String? = nil, httpCodes: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetTrafficMirrorHealthSwitchResponse {
        try await self.setTrafficMirrorHealthSwitch(.init(trafficMirrorId: trafficMirrorId, healthSwitch: healthSwitch, healthNum: healthNum, unhealthNum: unhealthNum, intervalTime: intervalTime, httpCheckDomain: httpCheckDomain, httpCheckPath: httpCheckPath, httpCodes: httpCodes), region: region, logger: logger, on: eventLoop)
    }
}
