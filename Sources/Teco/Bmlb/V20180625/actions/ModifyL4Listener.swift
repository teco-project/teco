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
    /// ModifyL4Listener请求参数结构体
    public struct ModifyL4ListenerRequest: TCRequest {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String

        /// 四层监听器ID。可通过接口DescribeL4Listeners查询。
        public let listenerId: String

        /// 四层监听器名称。
        public let listenerName: String?

        /// 会话保持时间，单位：秒。可选值：900~3600。
        public let sessionExpire: Int64?

        /// 是否开启健康检查：1（开启）、0（关闭）。默认值0，表示关闭。
        public let healthSwitch: Int64?

        /// 健康检查的响应超时时间，可选值：2-60，默认值：2，单位:秒。
        ///
        /// _响应超时时间要小于检查间隔时间。_
        public let timeOut: Int64?

        /// 健康检查间隔，默认值：5，可选值：5-300，单位：秒。
        public let intervalTime: Int64?

        /// 健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2-10，单位：次。
        public let healthNum: Int64?

        /// 不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发不正常，可选值：2-10，单位：次。
        public let unhealthNum: Int64?

        /// 监听器最大带宽值，用于计费模式为固定带宽计费。可选值：0-1000，单位：Mbps。
        public let bandwidth: Int64?

        /// 是否开启自定义健康检查：1（开启）、0（关闭）。默认值0，表示关闭。（该字段在健康检查开启的情况下才生效）
        public let customHealthSwitch: Int64?

        /// 自定义健康探测内容类型，可选值：text（文本）、hexadecimal（十六进制）。
        public let inputType: String?

        /// 探测内容类型为文本方式时，针对请求文本中换行替换方式。可选值：1（替换为LF）、2（替换为CR）、3（替换为LF+CR）。
        public let lineSeparatorType: Int64?

        /// 自定义探测请求内容。
        public let healthRequest: String?

        /// 自定义探测返回内容。
        public let healthResponse: String?

        /// 是否开启toa。可选值：0（关闭）、1（开启），默认关闭。（该字段在负载均衡为fullnat类型下才生效）
        public let toaFlag: Int64?

        /// 四层调度方式。wrr，wlc。
        public let balanceMode: String?

        public init(loadBalancerId: String, listenerId: String, listenerName: String? = nil, sessionExpire: Int64? = nil, healthSwitch: Int64? = nil, timeOut: Int64? = nil, intervalTime: Int64? = nil, healthNum: Int64? = nil, unhealthNum: Int64? = nil, bandwidth: Int64? = nil, customHealthSwitch: Int64? = nil, inputType: String? = nil, lineSeparatorType: Int64? = nil, healthRequest: String? = nil, healthResponse: String? = nil, toaFlag: Int64? = nil, balanceMode: String? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.listenerName = listenerName
            self.sessionExpire = sessionExpire
            self.healthSwitch = healthSwitch
            self.timeOut = timeOut
            self.intervalTime = intervalTime
            self.healthNum = healthNum
            self.unhealthNum = unhealthNum
            self.bandwidth = bandwidth
            self.customHealthSwitch = customHealthSwitch
            self.inputType = inputType
            self.lineSeparatorType = lineSeparatorType
            self.healthRequest = healthRequest
            self.healthResponse = healthResponse
            self.toaFlag = toaFlag
            self.balanceMode = balanceMode
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case listenerName = "ListenerName"
            case sessionExpire = "SessionExpire"
            case healthSwitch = "HealthSwitch"
            case timeOut = "TimeOut"
            case intervalTime = "IntervalTime"
            case healthNum = "HealthNum"
            case unhealthNum = "UnhealthNum"
            case bandwidth = "Bandwidth"
            case customHealthSwitch = "CustomHealthSwitch"
            case inputType = "InputType"
            case lineSeparatorType = "LineSeparatorType"
            case healthRequest = "HealthRequest"
            case healthResponse = "HealthResponse"
            case toaFlag = "ToaFlag"
            case balanceMode = "BalanceMode"
        }
    }

    /// ModifyL4Listener返回参数结构体
    public struct ModifyL4ListenerResponse: TCResponse {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改黑石负载均衡四层监听器
    ///
    /// 修改黑石负载均衡四层监听器。
    @inlinable
    public func modifyL4Listener(_ input: ModifyL4ListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4ListenerResponse> {
        self.client.execute(action: "ModifyL4Listener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡四层监听器
    ///
    /// 修改黑石负载均衡四层监听器。
    @inlinable
    public func modifyL4Listener(_ input: ModifyL4ListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4ListenerResponse {
        try await self.client.execute(action: "ModifyL4Listener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改黑石负载均衡四层监听器
    ///
    /// 修改黑石负载均衡四层监听器。
    @inlinable
    public func modifyL4Listener(loadBalancerId: String, listenerId: String, listenerName: String? = nil, sessionExpire: Int64? = nil, healthSwitch: Int64? = nil, timeOut: Int64? = nil, intervalTime: Int64? = nil, healthNum: Int64? = nil, unhealthNum: Int64? = nil, bandwidth: Int64? = nil, customHealthSwitch: Int64? = nil, inputType: String? = nil, lineSeparatorType: Int64? = nil, healthRequest: String? = nil, healthResponse: String? = nil, toaFlag: Int64? = nil, balanceMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyL4ListenerResponse> {
        self.modifyL4Listener(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, listenerName: listenerName, sessionExpire: sessionExpire, healthSwitch: healthSwitch, timeOut: timeOut, intervalTime: intervalTime, healthNum: healthNum, unhealthNum: unhealthNum, bandwidth: bandwidth, customHealthSwitch: customHealthSwitch, inputType: inputType, lineSeparatorType: lineSeparatorType, healthRequest: healthRequest, healthResponse: healthResponse, toaFlag: toaFlag, balanceMode: balanceMode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改黑石负载均衡四层监听器
    ///
    /// 修改黑石负载均衡四层监听器。
    @inlinable
    public func modifyL4Listener(loadBalancerId: String, listenerId: String, listenerName: String? = nil, sessionExpire: Int64? = nil, healthSwitch: Int64? = nil, timeOut: Int64? = nil, intervalTime: Int64? = nil, healthNum: Int64? = nil, unhealthNum: Int64? = nil, bandwidth: Int64? = nil, customHealthSwitch: Int64? = nil, inputType: String? = nil, lineSeparatorType: Int64? = nil, healthRequest: String? = nil, healthResponse: String? = nil, toaFlag: Int64? = nil, balanceMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL4ListenerResponse {
        try await self.modifyL4Listener(.init(loadBalancerId: loadBalancerId, listenerId: listenerId, listenerName: listenerName, sessionExpire: sessionExpire, healthSwitch: healthSwitch, timeOut: timeOut, intervalTime: intervalTime, healthNum: healthNum, unhealthNum: unhealthNum, bandwidth: bandwidth, customHealthSwitch: customHealthSwitch, inputType: inputType, lineSeparatorType: lineSeparatorType, healthRequest: healthRequest, healthResponse: healthResponse, toaFlag: toaFlag, balanceMode: balanceMode), region: region, logger: logger, on: eventLoop)
    }
}
