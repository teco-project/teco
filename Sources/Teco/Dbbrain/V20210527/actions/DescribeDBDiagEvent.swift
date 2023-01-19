//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dbbrain {
    /// DescribeDBDiagEvent请求参数结构体
    public struct DescribeDBDiagEventRequest: TCRequestModel {
        /// 实例 ID 。
        public let instanceId: String

        /// 事件 ID 。通过“获取实例诊断历史DescribeDBDiagHistory”获取。
        public let eventId: Int64?

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, eventId: Int64? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.eventId = eventId
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case eventId = "EventId"
            case product = "Product"
        }
    }

    /// DescribeDBDiagEvent返回参数结构体
    public struct DescribeDBDiagEventResponse: TCResponseModel {
        /// 诊断项。
        public let diagItem: String

        /// 诊断类型。
        public let diagType: String

        /// 事件 ID 。
        public let eventId: Int64

        /// 诊断事件详情，若无附加解释信息则输出为空。
        public let explanation: String

        /// 诊断概要。
        public let outline: String

        /// 诊断出的问题。
        public let problem: String

        /// 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        public let severity: Int64

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 诊断建议，若无建议则输出为空。
        public let suggestions: String

        /// 保留字段。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metric: String?

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diagItem = "DiagItem"
            case diagType = "DiagType"
            case eventId = "EventId"
            case explanation = "Explanation"
            case outline = "Outline"
            case problem = "Problem"
            case severity = "Severity"
            case startTime = "StartTime"
            case suggestions = "Suggestions"
            case metric = "Metric"
            case endTime = "EndTime"
            case requestId = "RequestId"
        }
    }

    /// 获取诊断事件详情
    ///
    /// 获取实例异常诊断事件的详情信息。
    @inlinable
    public func describeDBDiagEvent(_ input: DescribeDBDiagEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBDiagEventResponse> {
        self.client.execute(action: "DescribeDBDiagEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取诊断事件详情
    ///
    /// 获取实例异常诊断事件的详情信息。
    @inlinable
    public func describeDBDiagEvent(_ input: DescribeDBDiagEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagEventResponse {
        try await self.client.execute(action: "DescribeDBDiagEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取诊断事件详情
    ///
    /// 获取实例异常诊断事件的详情信息。
    @inlinable
    public func describeDBDiagEvent(instanceId: String, eventId: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBDiagEventResponse> {
        self.describeDBDiagEvent(DescribeDBDiagEventRequest(instanceId: instanceId, eventId: eventId, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 获取诊断事件详情
    ///
    /// 获取实例异常诊断事件的详情信息。
    @inlinable
    public func describeDBDiagEvent(instanceId: String, eventId: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagEventResponse {
        try await self.describeDBDiagEvent(DescribeDBDiagEventRequest(instanceId: instanceId, eventId: eventId, product: product), region: region, logger: logger, on: eventLoop)
    }
}
