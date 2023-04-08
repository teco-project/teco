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

extension Iotvideo {
    /// DescribeDeviceStatusLog请求参数结构体
    public struct DescribeDeviceStatusLogRequest: TCRequestModel {
        /// 开始时间（毫秒）
        public let minTime: UInt64

        /// 结束时间（毫秒）
        public let maxTime: UInt64

        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 返回条数
        public let limit: Int64?

        /// 检索上下文
        public let context: String?

        public init(minTime: UInt64, maxTime: UInt64, productId: String, deviceName: String, limit: Int64? = nil, context: String? = nil) {
            self.minTime = minTime
            self.maxTime = maxTime
            self.productId = productId
            self.deviceName = deviceName
            self.limit = limit
            self.context = context
        }

        enum CodingKeys: String, CodingKey {
            case minTime = "MinTime"
            case maxTime = "MaxTime"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case limit = "Limit"
            case context = "Context"
        }
    }

    /// DescribeDeviceStatusLog返回参数结构体
    public struct DescribeDeviceStatusLogResponse: TCResponseModel {
        /// 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listover: Bool?

        /// 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?

        /// 日志数据结果数组，返回对应时间点及取值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [DeviceStatusLogItem]?

        /// 日志数据结果总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listover = "Listover"
            case context = "Context"
            case results = "Results"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取设备上下线日志
    @inlinable
    public func describeDeviceStatusLog(_ input: DescribeDeviceStatusLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceStatusLogResponse> {
        self.client.execute(action: "DescribeDeviceStatusLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备上下线日志
    @inlinable
    public func describeDeviceStatusLog(_ input: DescribeDeviceStatusLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceStatusLogResponse {
        try await self.client.execute(action: "DescribeDeviceStatusLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备上下线日志
    @inlinable
    public func describeDeviceStatusLog(minTime: UInt64, maxTime: UInt64, productId: String, deviceName: String, limit: Int64? = nil, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceStatusLogResponse> {
        self.describeDeviceStatusLog(.init(minTime: minTime, maxTime: maxTime, productId: productId, deviceName: deviceName, limit: limit, context: context), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备上下线日志
    @inlinable
    public func describeDeviceStatusLog(minTime: UInt64, maxTime: UInt64, productId: String, deviceName: String, limit: Int64? = nil, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceStatusLogResponse {
        try await self.describeDeviceStatusLog(.init(minTime: minTime, maxTime: maxTime, productId: productId, deviceName: deviceName, limit: limit, context: context), region: region, logger: logger, on: eventLoop)
    }
}
