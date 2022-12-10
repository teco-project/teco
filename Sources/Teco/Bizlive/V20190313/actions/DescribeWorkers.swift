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

extension Bizlive {
    /// 查询空闲机器数量
    ///
    /// 查询空闲机器数量
    @inlinable
    public func describeWorkers(_ input: DescribeWorkersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWorkersResponse > {
        self.client.execute(action: "DescribeWorkers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询空闲机器数量
    ///
    /// 查询空闲机器数量
    @inlinable
    public func describeWorkers(_ input: DescribeWorkersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkersResponse {
        try await self.client.execute(action: "DescribeWorkers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWorkers请求参数结构体
    public struct DescribeWorkersRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeWorkers返回参数结构体
    public struct DescribeWorkersResponse: TCResponseModel {
        /// 各个区域的机器情况
        public let regionDetail: [WorkerRegionInfo]
        
        /// 空闲机器总数量
        public let idle: UInt64
        
        /// 区域个数
        public let regionNum: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case regionDetail = "RegionDetail"
            case idle = "Idle"
            case regionNum = "RegionNum"
            case requestId = "RequestId"
        }
    }
}