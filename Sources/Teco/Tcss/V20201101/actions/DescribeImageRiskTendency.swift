//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Tcss {
    /// 查询容器安全本地镜像风险趋势
    ///
    /// 查询容器安全本地镜像风险趋势
    @inlinable
    public func describeImageRiskTendency(_ input: DescribeImageRiskTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRiskTendencyResponse > {
        self.client.execute(action: "DescribeImageRiskTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询容器安全本地镜像风险趋势
    ///
    /// 查询容器安全本地镜像风险趋势
    @inlinable
    public func describeImageRiskTendency(_ input: DescribeImageRiskTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRiskTendencyResponse {
        try await self.client.execute(action: "DescribeImageRiskTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeImageRiskTendency请求参数结构体
    public struct DescribeImageRiskTendencyRequest: TCRequestModel {
        /// 开始时间
        // FIXME: Codable support not implemented for date yet.
        public let startTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for date yet.
        public let endTime: Date
        
        public init (startTime: Date, endTime: Date) {
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeImageRiskTendency返回参数结构体
    public struct DescribeImageRiskTendencyResponse: TCResponseModel {
        /// 本地镜像新增风险趋势信息列表
        public let imageRiskTendencySet: [ImageRiskTendencyInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageRiskTendencySet = "ImageRiskTendencySet"
            case requestId = "RequestId"
        }
    }
}