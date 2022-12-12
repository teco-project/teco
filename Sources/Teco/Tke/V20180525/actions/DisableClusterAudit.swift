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

extension Tke {
    /// DisableClusterAudit请求参数结构体
    public struct DisableClusterAuditRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 取值为true代表关闭集群审计时删除默认创建的日志集和主题，false代表不删除
        public let deleteLogSetAndTopic: Bool?
        
        public init (clusterId: String, deleteLogSetAndTopic: Bool? = nil) {
            self.clusterId = clusterId
            self.deleteLogSetAndTopic = deleteLogSetAndTopic
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case deleteLogSetAndTopic = "DeleteLogSetAndTopic"
        }
    }
    
    /// DisableClusterAudit返回参数结构体
    public struct DisableClusterAuditResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 关闭集群审计
    @inlinable
    public func disableClusterAudit(_ input: DisableClusterAuditRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableClusterAuditResponse > {
        self.client.execute(action: "DisableClusterAudit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 关闭集群审计
    @inlinable
    public func disableClusterAudit(_ input: DisableClusterAuditRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableClusterAuditResponse {
        try await self.client.execute(action: "DisableClusterAudit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
