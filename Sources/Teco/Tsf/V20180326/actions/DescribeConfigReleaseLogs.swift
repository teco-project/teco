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

extension Tsf {
    /// 查询配置发布历史
    ///
    /// 查询配置发布历史
    @inlinable
    public func describeConfigReleaseLogs(_ input: DescribeConfigReleaseLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeConfigReleaseLogsResponse > {
        self.client.execute(action: "DescribeConfigReleaseLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询配置发布历史
    ///
    /// 查询配置发布历史
    @inlinable
    public func describeConfigReleaseLogs(_ input: DescribeConfigReleaseLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigReleaseLogsResponse {
        try await self.client.execute(action: "DescribeConfigReleaseLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeConfigReleaseLogs请求参数结构体
    public struct DescribeConfigReleaseLogsRequest: TCRequestModel {
        /// 部署组ID，不传入时查询全量
        public let groupId: String?
        
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 每页条数，默认为20
        public let limit: Int64?
        
        /// 命名空间ID，不传入时查询全量
        public let namespaceId: String?
        
        /// 集群ID，不传入时查询全量
        public let clusterId: String?
        
        /// 应用ID，不传入时查询全量
        public let applicationId: String?
        
        public init (groupId: String?, offset: Int64?, limit: Int64?, namespaceId: String?, clusterId: String?, applicationId: String?) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.namespaceId = namespaceId
            self.clusterId = clusterId
            self.applicationId = applicationId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case namespaceId = "NamespaceId"
            case clusterId = "ClusterId"
            case applicationId = "ApplicationId"
        }
    }
    
    /// DescribeConfigReleaseLogs返回参数结构体
    public struct DescribeConfigReleaseLogsResponse: TCResponseModel {
        /// 分页的配置项发布历史列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageConfigReleaseLog
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}