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

extension Mariadb {
    /// 修改备份时间
    ///
    /// 本接口（ModifyBackupTime）用于设置云数据库实例的备份时间。后台系统将根据此配置定期进行实例备份。
    @inlinable
    public func modifyBackupTime(_ input: ModifyBackupTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyBackupTimeResponse > {
        self.client.execute(action: "ModifyBackupTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改备份时间
    ///
    /// 本接口（ModifyBackupTime）用于设置云数据库实例的备份时间。后台系统将根据此配置定期进行实例备份。
    @inlinable
    public func modifyBackupTime(_ input: ModifyBackupTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupTimeResponse {
        try await self.client.execute(action: "ModifyBackupTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyBackupTime请求参数结构体
    public struct ModifyBackupTimeRequest: TCRequestModel {
        /// 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String
        
        /// 每天备份执行的区间的开始时间，格式 mm:ss，形如 22:00
        public let startBackupTime: String
        
        /// 每天备份执行的区间的结束时间，格式 mm:ss，形如 23:59
        public let endBackupTime: String
        
        public init (instanceId: String, startBackupTime: String, endBackupTime: String) {
            self.instanceId = instanceId
            self.startBackupTime = startBackupTime
            self.endBackupTime = endBackupTime
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startBackupTime = "StartBackupTime"
            case endBackupTime = "EndBackupTime"
        }
    }
    
    /// ModifyBackupTime返回参数结构体
    public struct ModifyBackupTimeResponse: TCResponseModel {
        /// 设置的状态，0 表示成功
        public let status: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}