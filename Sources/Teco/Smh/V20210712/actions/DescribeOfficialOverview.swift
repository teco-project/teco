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

extension Smh {
    /// 查询官方实例概览数据
    ///
    /// 查询官方云盘实例概览数据
    @inlinable
    public func describeOfficialOverview(_ input: DescribeOfficialOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOfficialOverviewResponse > {
        self.client.execute(action: "DescribeOfficialOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询官方实例概览数据
    ///
    /// 查询官方云盘实例概览数据
    @inlinable
    public func describeOfficialOverview(_ input: DescribeOfficialOverviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfficialOverviewResponse {
        try await self.client.execute(action: "DescribeOfficialOverview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeOfficialOverview请求参数结构体
    public struct DescribeOfficialOverviewRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeOfficialOverview返回参数结构体
    public struct DescribeOfficialOverviewResponse: TCResponseModel {
        /// 云盘实例数量
        public let quantity: UInt64
        
        /// 已经使用的总存储量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        public let storage: String
        
        /// 已经分配和使用的总用户数
        public let userCount: UInt64
        
        /// 本月外网下行流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        public let internetTraffic: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case quantity = "Quantity"
            case storage = "Storage"
            case userCount = "UserCount"
            case internetTraffic = "InternetTraffic"
            case requestId = "RequestId"
        }
    }
}