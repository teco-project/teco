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

extension Eiam {
    /// 查询指定机构下的资源授权列表
    ///
    /// 查询指定机构下的资源授权列表
    @inlinable
    public func describeOrgResourcesAuthorization(_ input: DescribeOrgResourcesAuthorizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOrgResourcesAuthorizationResponse > {
        self.client.execute(action: "DescribeOrgResourcesAuthorization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询指定机构下的资源授权列表
    ///
    /// 查询指定机构下的资源授权列表
    @inlinable
    public func describeOrgResourcesAuthorization(_ input: DescribeOrgResourcesAuthorizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrgResourcesAuthorizationResponse {
        try await self.client.execute(action: "DescribeOrgResourcesAuthorization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeOrgResourcesAuthorization请求参数结构体
    public struct DescribeOrgResourcesAuthorizationRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String
        
        /// 机构ID
        public let orgNodeId: String
        
        public init (applicationId: String, orgNodeId: String) {
            self.applicationId = applicationId
            self.orgNodeId = orgNodeId
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case orgNodeId = "OrgNodeId"
        }
    }
    
    /// DescribeOrgResourcesAuthorization返回参数结构体
    public struct DescribeOrgResourcesAuthorizationResponse: TCResponseModel {
        /// 应用ID
        public let applicationId: String
        
        /// 授权机构ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeId: String?
        
        /// 机构名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeName: String?
        
        /// 机构目录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodePath: String?
        
        /// 资源列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorizationOrgResourceList: [AuthorizationResourceEntityInfo]?
        
        /// 资源数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case orgNodeId = "OrgNodeId"
            case orgNodeName = "OrgNodeName"
            case orgNodePath = "OrgNodePath"
            case authorizationOrgResourceList = "AuthorizationOrgResourceList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}