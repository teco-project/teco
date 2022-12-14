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

extension Tcss {
    /// DescribeSecEventsTendency请求参数结构体
    public struct DescribeSecEventsTendencyRequest: TCRequestModel {
        /// 开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startTime: Date
        
        /// 结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endTime: Date
        
        public init (startTime: Date, endTime: Date) {
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeSecEventsTendency返回参数结构体
    public struct DescribeSecEventsTendencyResponse: TCResponseModel {
        /// 运行时安全事件趋势信息列表
        public let eventTendencySet: [SecTendencyEventInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case eventTendencySet = "EventTendencySet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询容器运行时安全时间趋势
    ///
    /// 查询容器运行时安全事件趋势
    @inlinable
    public func describeSecEventsTendency(_ input: DescribeSecEventsTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecEventsTendencyResponse > {
        self.client.execute(action: "DescribeSecEventsTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询容器运行时安全时间趋势
    ///
    /// 查询容器运行时安全事件趋势
    @inlinable
    public func describeSecEventsTendency(_ input: DescribeSecEventsTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecEventsTendencyResponse {
        try await self.client.execute(action: "DescribeSecEventsTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询容器运行时安全时间趋势
    ///
    /// 查询容器运行时安全事件趋势
    @inlinable
    public func describeSecEventsTendency(startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecEventsTendencyResponse > {
        self.describeSecEventsTendency(DescribeSecEventsTendencyRequest(startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
    
    /// 查询容器运行时安全时间趋势
    ///
    /// 查询容器运行时安全事件趋势
    @inlinable
    public func describeSecEventsTendency(startTime: Date, endTime: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecEventsTendencyResponse {
        try await self.describeSecEventsTendency(DescribeSecEventsTendencyRequest(startTime: startTime, endTime: endTime), logger: logger, on: eventLoop)
    }
}
