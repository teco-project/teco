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

import TecoCore

extension Iotvideo {
    /// DescribeDeviceActionHistory请求参数结构体
    public struct DescribeDeviceActionHistoryRequest: TCRequestModel {
        /// 产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 开始范围的 unix 毫秒时间戳
        public let minTime: UInt64

        /// 结束范围的 unix 毫秒时间戳
        public let maxTime: UInt64

        /// 动作Id
        public let actionId: String?

        /// 查询条数 默认为0 最大不超过500
        public let limit: UInt64?

        /// 游标，标识查询位置。
        public let context: String?

        public init(productId: String, deviceName: String, minTime: UInt64, maxTime: UInt64, actionId: String? = nil, limit: UInt64? = nil, context: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.minTime = minTime
            self.maxTime = maxTime
            self.actionId = actionId
            self.limit = limit
            self.context = context
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case minTime = "MinTime"
            case maxTime = "MaxTime"
            case actionId = "ActionId"
            case limit = "Limit"
            case context = "Context"
        }
    }

    /// DescribeDeviceActionHistory返回参数结构体
    public struct DescribeDeviceActionHistoryResponse: TCResponseModel {
        /// 总条数
        public let totalCounts: UInt64

        /// 动作历史
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let actionHistories: [ActionHistory]?

        /// 用于标识查询结果的上下文，翻页用。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?

        /// 搜索结果是否已经结束。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listover: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCounts = "TotalCounts"
            case actionHistories = "ActionHistories"
            case context = "Context"
            case listover = "Listover"
            case requestId = "RequestId"
        }
    }

    /// 获取设备动作历史
    ///
    /// 为用户提供获取动作历史的能力。
    @inlinable
    public func describeDeviceActionHistory(_ input: DescribeDeviceActionHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceActionHistoryResponse> {
        self.client.execute(action: "DescribeDeviceActionHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备动作历史
    ///
    /// 为用户提供获取动作历史的能力。
    @inlinable
    public func describeDeviceActionHistory(_ input: DescribeDeviceActionHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceActionHistoryResponse {
        try await self.client.execute(action: "DescribeDeviceActionHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备动作历史
    ///
    /// 为用户提供获取动作历史的能力。
    @inlinable
    public func describeDeviceActionHistory(productId: String, deviceName: String, minTime: UInt64, maxTime: UInt64, actionId: String? = nil, limit: UInt64? = nil, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceActionHistoryResponse> {
        self.describeDeviceActionHistory(.init(productId: productId, deviceName: deviceName, minTime: minTime, maxTime: maxTime, actionId: actionId, limit: limit, context: context), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备动作历史
    ///
    /// 为用户提供获取动作历史的能力。
    @inlinable
    public func describeDeviceActionHistory(productId: String, deviceName: String, minTime: UInt64, maxTime: UInt64, actionId: String? = nil, limit: UInt64? = nil, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceActionHistoryResponse {
        try await self.describeDeviceActionHistory(.init(productId: productId, deviceName: deviceName, minTime: minTime, maxTime: maxTime, actionId: actionId, limit: limit, context: context), region: region, logger: logger, on: eventLoop)
    }
}
