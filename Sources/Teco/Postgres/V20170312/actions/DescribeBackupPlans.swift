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

extension Postgres {
    /// 查询备份计划
    ///
    /// 本接口 (DescribeBackupPlans) 用于实例所有的备份计划查询
    @inlinable
    public func describeBackupPlans(_ input: DescribeBackupPlansRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBackupPlansResponse > {
        self.client.execute(action: "DescribeBackupPlans", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询备份计划
    ///
    /// 本接口 (DescribeBackupPlans) 用于实例所有的备份计划查询
    @inlinable
    public func describeBackupPlans(_ input: DescribeBackupPlansRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupPlansResponse {
        try await self.client.execute(action: "DescribeBackupPlans", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBackupPlans请求参数结构体
    public struct DescribeBackupPlansRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String
        
        public init (dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }
    
    /// DescribeBackupPlans返回参数结构体
    public struct DescribeBackupPlansResponse: TCResponseModel {
        /// 实例的备份计划集
        public let plans: [BackupPlan]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case plans = "Plans"
            case requestId = "RequestId"
        }
    }
}
