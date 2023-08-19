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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tsf {
    /// DescribeInovcationIndicators请求参数结构体
    public struct DescribeInovcationIndicatorsRequest: TCRequest {
        /// 维度
        public let dimension: String

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 命名空间ID
        public let namespaceId: String?

        /// 微服务ID
        public let serviceId: String?

        /// 调用方服务名
        public let callerServiceName: String?

        /// 被调方服务名
        public let calleeServiceName: String?

        /// 调用方接口名
        public let callerInterfaceName: String?

        /// 被调方接口名
        public let calleeInterfaceName: String?

        /// 应用ID
        public let applicationId: String?

        /// 部署组ID
        public let groupId: String?

        /// 实例ID
        public let instanceId: String?

        public init(dimension: String, startTime: Date, endTime: Date, namespaceId: String? = nil, serviceId: String? = nil, callerServiceName: String? = nil, calleeServiceName: String? = nil, callerInterfaceName: String? = nil, calleeInterfaceName: String? = nil, applicationId: String? = nil, groupId: String? = nil, instanceId: String? = nil) {
            self.dimension = dimension
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.namespaceId = namespaceId
            self.serviceId = serviceId
            self.callerServiceName = callerServiceName
            self.calleeServiceName = calleeServiceName
            self.callerInterfaceName = callerInterfaceName
            self.calleeInterfaceName = calleeInterfaceName
            self.applicationId = applicationId
            self.groupId = groupId
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case dimension = "Dimension"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case namespaceId = "NamespaceId"
            case serviceId = "ServiceId"
            case callerServiceName = "CallerServiceName"
            case calleeServiceName = "CalleeServiceName"
            case callerInterfaceName = "CallerInterfaceName"
            case calleeInterfaceName = "CalleeInterfaceName"
            case applicationId = "ApplicationId"
            case groupId = "GroupId"
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInovcationIndicators返回参数结构体
    public struct DescribeInovcationIndicatorsResponse: TCResponse {
        /// 服务调用监控指标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: InvocationIndicator?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询调用监控指标
    ///
    /// 废弃
    @inlinable
    public func describeInovcationIndicators(_ input: DescribeInovcationIndicatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInovcationIndicatorsResponse> {
        self.client.execute(action: "DescribeInovcationIndicators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询调用监控指标
    ///
    /// 废弃
    @inlinable
    public func describeInovcationIndicators(_ input: DescribeInovcationIndicatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInovcationIndicatorsResponse {
        try await self.client.execute(action: "DescribeInovcationIndicators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询调用监控指标
    ///
    /// 废弃
    @inlinable
    public func describeInovcationIndicators(dimension: String, startTime: Date, endTime: Date, namespaceId: String? = nil, serviceId: String? = nil, callerServiceName: String? = nil, calleeServiceName: String? = nil, callerInterfaceName: String? = nil, calleeInterfaceName: String? = nil, applicationId: String? = nil, groupId: String? = nil, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInovcationIndicatorsResponse> {
        self.describeInovcationIndicators(.init(dimension: dimension, startTime: startTime, endTime: endTime, namespaceId: namespaceId, serviceId: serviceId, callerServiceName: callerServiceName, calleeServiceName: calleeServiceName, callerInterfaceName: callerInterfaceName, calleeInterfaceName: calleeInterfaceName, applicationId: applicationId, groupId: groupId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询调用监控指标
    ///
    /// 废弃
    @inlinable
    public func describeInovcationIndicators(dimension: String, startTime: Date, endTime: Date, namespaceId: String? = nil, serviceId: String? = nil, callerServiceName: String? = nil, calleeServiceName: String? = nil, callerInterfaceName: String? = nil, calleeInterfaceName: String? = nil, applicationId: String? = nil, groupId: String? = nil, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInovcationIndicatorsResponse {
        try await self.describeInovcationIndicators(.init(dimension: dimension, startTime: startTime, endTime: endTime, namespaceId: namespaceId, serviceId: serviceId, callerServiceName: callerServiceName, calleeServiceName: calleeServiceName, callerInterfaceName: callerInterfaceName, calleeInterfaceName: calleeInterfaceName, applicationId: applicationId, groupId: groupId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
