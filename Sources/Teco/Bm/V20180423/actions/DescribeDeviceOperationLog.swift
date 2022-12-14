//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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

extension Bm {
    /// DescribeDeviceOperationLog请求参数结构体
    public struct DescribeDeviceOperationLogRequest: TCRequestModel {
        /// 设备实例ID
        public let instanceId: String
        
        /// 查询开始日期
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startTime: Date?
        
        /// 查询结束日期
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endTime: Date?
        
        /// 偏移量
        public let offset: UInt64?
        
        /// 返回数量
        public let limit: UInt64?
        
        public init (instanceId: String, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDeviceOperationLog返回参数结构体
    public struct DescribeDeviceOperationLogResponse: TCResponseModel {
        /// 操作日志列表
        public let deviceOperationLogSet: [DeviceOperationLog]
        
        /// 返回数目
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceOperationLogSet = "DeviceOperationLogSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(_ input: DescribeDeviceOperationLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceOperationLogResponse > {
        self.client.execute(action: "DescribeDeviceOperationLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(_ input: DescribeDeviceOperationLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceOperationLogResponse {
        try await self.client.execute(action: "DescribeDeviceOperationLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(instanceId: String, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceOperationLogResponse > {
        self.describeDeviceOperationLog(DescribeDeviceOperationLogRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
    
    /// 查询设备操作日志
    ///
    /// 查询设备操作日志， 如设备重启，重装，设置密码等操作
    @inlinable
    public func describeDeviceOperationLog(instanceId: String, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceOperationLogResponse {
        try await self.describeDeviceOperationLog(DescribeDeviceOperationLogRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
