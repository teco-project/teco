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

extension Tsf {
    /// DescribeApiUseDetail请求参数结构体
    public struct DescribeApiUseDetailRequest: TCRequestModel {
        /// 网关部署组ID
        public let gatewayDeployGroupId: String
        
        /// 网关分组Api ID
        public let apiId: String
        
        /// 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date
        
        /// 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date
        
        public init (gatewayDeployGroupId: String, apiId: String, startTime: Date, endTime: Date) {
            self.gatewayDeployGroupId = gatewayDeployGroupId
            self.apiId = apiId
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayDeployGroupId = "GatewayDeployGroupId"
            case apiId = "ApiId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeApiUseDetail返回参数结构体
    public struct DescribeApiUseDetailResponse: TCResponseModel {
        /// 日使用统计对象
        public let result: GroupApiUseStatistics
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询网关API监控明细数据
    @inlinable
    public func describeApiUseDetail(_ input: DescribeApiUseDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApiUseDetailResponse > {
        self.client.execute(action: "DescribeApiUseDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询网关API监控明细数据
    @inlinable
    public func describeApiUseDetail(_ input: DescribeApiUseDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiUseDetailResponse {
        try await self.client.execute(action: "DescribeApiUseDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询网关API监控明细数据
    @inlinable
    public func describeApiUseDetail(gatewayDeployGroupId: String, apiId: String, startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApiUseDetailResponse > {
        self.describeApiUseDetail(DescribeApiUseDetailRequest(gatewayDeployGroupId: gatewayDeployGroupId, apiId: apiId, startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
    
    /// 查询网关API监控明细数据
    @inlinable
    public func describeApiUseDetail(gatewayDeployGroupId: String, apiId: String, startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiUseDetailResponse {
        try await self.describeApiUseDetail(DescribeApiUseDetailRequest(gatewayDeployGroupId: gatewayDeployGroupId, apiId: apiId, startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
}
