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

extension Yunjing {
    /// 获取概览统计数据
    ///
    /// 本接口用于（DescribeOverviewStatistics）获取概览统计数据。
    @inlinable
    public func describeOverviewStatistics(_ input: DescribeOverviewStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOverviewStatisticsResponse > {
        self.client.execute(action: "DescribeOverviewStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取概览统计数据
    ///
    /// 本接口用于（DescribeOverviewStatistics）获取概览统计数据。
    @inlinable
    public func describeOverviewStatistics(_ input: DescribeOverviewStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewStatisticsResponse {
        try await self.client.execute(action: "DescribeOverviewStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeOverviewStatistics请求参数结构体
    public struct DescribeOverviewStatisticsRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeOverviewStatistics返回参数结构体
    public struct DescribeOverviewStatisticsResponse: TCResponseModel {
        /// 服务器在线数。
        public let onlineMachineNum: UInt64
        
        /// 专业服务器数。
        public let proVersionMachineNum: UInt64
        
        /// 木马文件数。
        public let malwareNum: UInt64
        
        /// 异地登录数。
        public let nonlocalLoginNum: UInt64
        
        /// 暴力破解成功数。
        public let bruteAttackSuccessNum: UInt64
        
        /// 漏洞数。
        public let vulNum: UInt64
        
        /// 安全基线数。
        public let baseLineNum: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case onlineMachineNum = "OnlineMachineNum"
            case proVersionMachineNum = "ProVersionMachineNum"
            case malwareNum = "MalwareNum"
            case nonlocalLoginNum = "NonlocalLoginNum"
            case bruteAttackSuccessNum = "BruteAttackSuccessNum"
            case vulNum = "VulNum"
            case baseLineNum = "BaseLineNum"
            case requestId = "RequestId"
        }
    }
}