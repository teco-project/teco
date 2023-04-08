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

extension Cdb {
    /// DescribeRoMinScale请求参数结构体
    public struct DescribeRoMinScaleRequest: TCRequestModel {
        /// 只读实例ID，格式如：cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同，该参数与MasterInstanceId参数不能同时为空。
        public let roInstanceId: String?

        /// 主实例ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同，该参数与RoInstanceId参数不能同时为空。注意，当传入参数包含RoInstanceId时，返回值为只读实例升级时的最小规格；当传入参数只包含MasterInstanceId时，返回值为只读实例购买时的最小规格。
        public let masterInstanceId: String?

        public init(roInstanceId: String? = nil, masterInstanceId: String? = nil) {
            self.roInstanceId = roInstanceId
            self.masterInstanceId = masterInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case roInstanceId = "RoInstanceId"
            case masterInstanceId = "MasterInstanceId"
        }
    }

    /// DescribeRoMinScale返回参数结构体
    public struct DescribeRoMinScaleResponse: TCResponseModel {
        /// 内存规格大小, 单位为：MB。
        public let memory: Int64

        /// 磁盘规格大小, 单位为：GB。
        public let volume: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case memory = "Memory"
            case volume = "Volume"
            case requestId = "RequestId"
        }
    }

    /// 获取只读实例购买或升级的最小规格
    ///
    /// 本接口(DescribeRoMinScale)用于获取只读实例购买、升级时的最小规格。
    @inlinable
    public func describeRoMinScale(_ input: DescribeRoMinScaleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoMinScaleResponse> {
        self.client.execute(action: "DescribeRoMinScale", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取只读实例购买或升级的最小规格
    ///
    /// 本接口(DescribeRoMinScale)用于获取只读实例购买、升级时的最小规格。
    @inlinable
    public func describeRoMinScale(_ input: DescribeRoMinScaleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoMinScaleResponse {
        try await self.client.execute(action: "DescribeRoMinScale", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取只读实例购买或升级的最小规格
    ///
    /// 本接口(DescribeRoMinScale)用于获取只读实例购买、升级时的最小规格。
    @inlinable
    public func describeRoMinScale(roInstanceId: String? = nil, masterInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoMinScaleResponse> {
        self.describeRoMinScale(.init(roInstanceId: roInstanceId, masterInstanceId: masterInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取只读实例购买或升级的最小规格
    ///
    /// 本接口(DescribeRoMinScale)用于获取只读实例购买、升级时的最小规格。
    @inlinable
    public func describeRoMinScale(roInstanceId: String? = nil, masterInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoMinScaleResponse {
        try await self.describeRoMinScale(.init(roInstanceId: roInstanceId, masterInstanceId: masterInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
