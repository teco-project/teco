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

extension Vpc {
    /// 查询安全组关联实例统计
    ///
    /// 本接口（DescribeSecurityGroupAssociationStatistics）用于查询安全组关联的实例统计。
    @inlinable
    public func describeSecurityGroupAssociationStatistics(_ input: DescribeSecurityGroupAssociationStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityGroupAssociationStatisticsResponse > {
        self.client.execute(action: "DescribeSecurityGroupAssociationStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询安全组关联实例统计
    ///
    /// 本接口（DescribeSecurityGroupAssociationStatistics）用于查询安全组关联的实例统计。
    @inlinable
    public func describeSecurityGroupAssociationStatistics(_ input: DescribeSecurityGroupAssociationStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupAssociationStatisticsResponse {
        try await self.client.execute(action: "DescribeSecurityGroupAssociationStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSecurityGroupAssociationStatistics请求参数结构体
    public struct DescribeSecurityGroupAssociationStatisticsRequest: TCRequestModel {
        /// 安全实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupIds: [String]
        
        public init (securityGroupIds: [String]) {
            self.securityGroupIds = securityGroupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case securityGroupIds = "SecurityGroupIds"
        }
    }
    
    /// DescribeSecurityGroupAssociationStatistics返回参数结构体
    public struct DescribeSecurityGroupAssociationStatisticsResponse: TCResponseModel {
        /// 安全组关联实例统计。
        public let securityGroupAssociationStatisticsSet: [SecurityGroupAssociationStatistics]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case securityGroupAssociationStatisticsSet = "SecurityGroupAssociationStatisticsSet"
            case requestId = "RequestId"
        }
    }
}
