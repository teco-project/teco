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

extension Iotvideo {
    /// DescribeCloudStoragePackageConsumeStats请求参数结构体
    public struct DescribeCloudStoragePackageConsumeStatsRequest: TCRequestModel {
        /// 开始日期
        // FIXME: Codable support not implemented for date yet.
        public let startDate: Date
        
        /// 结束日期，开始与结束日期间隔不可超过一年
        // FIXME: Codable support not implemented for date yet.
        public let endDate: Date
        
        public init (startDate: Date, endDate: Date) {
            self.startDate = startDate
            self.endDate = endDate
        }
        
        enum CodingKeys: String, CodingKey {
            case startDate = "StartDate"
            case endDate = "EndDate"
        }
    }
    
    /// DescribeCloudStoragePackageConsumeStats返回参数结构体
    public struct DescribeCloudStoragePackageConsumeStatsResponse: TCResponseModel {
        /// 统计列表详情
        public let stats: [PackageConsumeStat]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case stats = "Stats"
            case requestId = "RequestId"
        }
    }
    
    /// 获取云存套餐包消耗统计
    @inlinable
    public func describeCloudStoragePackageConsumeStats(_ input: DescribeCloudStoragePackageConsumeStatsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudStoragePackageConsumeStatsResponse > {
        self.client.execute(action: "DescribeCloudStoragePackageConsumeStats", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取云存套餐包消耗统计
    @inlinable
    public func describeCloudStoragePackageConsumeStats(_ input: DescribeCloudStoragePackageConsumeStatsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStoragePackageConsumeStatsResponse {
        try await self.client.execute(action: "DescribeCloudStoragePackageConsumeStats", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
