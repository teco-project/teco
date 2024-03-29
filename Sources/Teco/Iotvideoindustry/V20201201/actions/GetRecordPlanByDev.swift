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

extension Iotvideoindustry {
    /// GetRecordPlanByDev请求参数结构体
    public struct GetRecordPlanByDevRequest: TCRequest {
        /// 设备唯一标识
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// GetRecordPlanByDev返回参数结构体
    public struct GetRecordPlanByDevResponse: TCResponse {
        /// 录制计划详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plan: RecordPlanItem?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case plan = "Plan"
            case requestId = "RequestId"
        }
    }

    /// 获取设备绑定的录制计划
    ///
    /// 本接口(GetRecordPlanByDev)用于根据设备ID查询其绑定的录制计划.
    @inlinable
    public func getRecordPlanByDev(_ input: GetRecordPlanByDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecordPlanByDevResponse> {
        self.client.execute(action: "GetRecordPlanByDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备绑定的录制计划
    ///
    /// 本接口(GetRecordPlanByDev)用于根据设备ID查询其绑定的录制计划.
    @inlinable
    public func getRecordPlanByDev(_ input: GetRecordPlanByDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecordPlanByDevResponse {
        try await self.client.execute(action: "GetRecordPlanByDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备绑定的录制计划
    ///
    /// 本接口(GetRecordPlanByDev)用于根据设备ID查询其绑定的录制计划.
    @inlinable
    public func getRecordPlanByDev(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecordPlanByDevResponse> {
        self.getRecordPlanByDev(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备绑定的录制计划
    ///
    /// 本接口(GetRecordPlanByDev)用于根据设备ID查询其绑定的录制计划.
    @inlinable
    public func getRecordPlanByDev(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecordPlanByDevResponse {
        try await self.getRecordPlanByDev(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
