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

extension Redis {
    /// SwitchInstanceVip请求参数结构体
    public struct SwitchInstanceVipRequest: TCRequestModel {
        /// 源实例ID
        public let srcInstanceId: String

        /// 目标实例ID
        public let dstInstanceId: String

        /// 单位为秒。源实例与目标实例间DTS已断开时间，如果DTS断开时间大于TimeDelay，则不切换VIP，建议尽量根据业务设置一个可接受的值。
        public let timeDelay: Int64?

        /// 在DTS断开的情况下是否强制切换。1：强制切换，0：不强制切换
        public let forceSwitch: Int64?

        /// now: 立即切换，syncComplete：等待同步完成后切换
        public let switchTime: String?

        public init(srcInstanceId: String, dstInstanceId: String, timeDelay: Int64? = nil, forceSwitch: Int64? = nil, switchTime: String? = nil) {
            self.srcInstanceId = srcInstanceId
            self.dstInstanceId = dstInstanceId
            self.timeDelay = timeDelay
            self.forceSwitch = forceSwitch
            self.switchTime = switchTime
        }

        enum CodingKeys: String, CodingKey {
            case srcInstanceId = "SrcInstanceId"
            case dstInstanceId = "DstInstanceId"
            case timeDelay = "TimeDelay"
            case forceSwitch = "ForceSwitch"
            case switchTime = "SwitchTime"
        }
    }

    /// SwitchInstanceVip返回参数结构体
    public struct SwitchInstanceVipResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 交换实例VIP
    ///
    /// 在通过DTS支持跨可用区灾备的场景中，通过该接口交换实例VIP完成实例灾备切换。交换VIP后目标实例可写，源和目标实例VIP互换，同时源与目标实例间DTS同步任务断开
    @inlinable
    public func switchInstanceVip(_ input: SwitchInstanceVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchInstanceVipResponse> {
        self.client.execute(action: "SwitchInstanceVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 交换实例VIP
    ///
    /// 在通过DTS支持跨可用区灾备的场景中，通过该接口交换实例VIP完成实例灾备切换。交换VIP后目标实例可写，源和目标实例VIP互换，同时源与目标实例间DTS同步任务断开
    @inlinable
    public func switchInstanceVip(_ input: SwitchInstanceVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchInstanceVipResponse {
        try await self.client.execute(action: "SwitchInstanceVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 交换实例VIP
    ///
    /// 在通过DTS支持跨可用区灾备的场景中，通过该接口交换实例VIP完成实例灾备切换。交换VIP后目标实例可写，源和目标实例VIP互换，同时源与目标实例间DTS同步任务断开
    @inlinable
    public func switchInstanceVip(srcInstanceId: String, dstInstanceId: String, timeDelay: Int64? = nil, forceSwitch: Int64? = nil, switchTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchInstanceVipResponse> {
        let input = SwitchInstanceVipRequest(srcInstanceId: srcInstanceId, dstInstanceId: dstInstanceId, timeDelay: timeDelay, forceSwitch: forceSwitch, switchTime: switchTime)
        return self.client.execute(action: "SwitchInstanceVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 交换实例VIP
    ///
    /// 在通过DTS支持跨可用区灾备的场景中，通过该接口交换实例VIP完成实例灾备切换。交换VIP后目标实例可写，源和目标实例VIP互换，同时源与目标实例间DTS同步任务断开
    @inlinable
    public func switchInstanceVip(srcInstanceId: String, dstInstanceId: String, timeDelay: Int64? = nil, forceSwitch: Int64? = nil, switchTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchInstanceVipResponse {
        let input = SwitchInstanceVipRequest(srcInstanceId: srcInstanceId, dstInstanceId: dstInstanceId, timeDelay: timeDelay, forceSwitch: forceSwitch, switchTime: switchTime)
        return try await self.client.execute(action: "SwitchInstanceVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
