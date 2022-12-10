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

extension Iecp {
    /// 获取Secrets列表
    @inlinable
    public func describeSecrets(_ input: DescribeSecretsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecretsResponse > {
        self.client.execute(action: "DescribeSecrets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Secrets列表
    @inlinable
    public func describeSecrets(_ input: DescribeSecretsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretsResponse {
        try await self.client.execute(action: "DescribeSecrets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSecrets请求参数结构体
    public struct DescribeSecretsRequest: TCRequestModel {
        /// 边缘单元ID
        public let edgeUnitID: UInt64
        
        /// 页号
        public let offset: UInt64
        
        /// 每页数目
        public let limit: UInt64
        
        /// 命名空间
        public let secretNamespace: String?
        
        /// Secret名(模糊匹配)
        public let namePattern: String?
        
        /// Sort.Field:CreateTime Sort.Order:ASC|DESC
        public let sort: FieldSort
        
        /// Secret类型(DockerConfigJson或Opaque)
        public let secretType: String?
        
        public init (edgeUnitID: UInt64, offset: UInt64, limit: UInt64, secretNamespace: String?, namePattern: String?, sort: FieldSort, secretType: String?) {
            self.edgeUnitID = edgeUnitID
            self.offset = offset
            self.limit = limit
            self.secretNamespace = secretNamespace
            self.namePattern = namePattern
            self.sort = sort
            self.secretType = secretType
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case offset = "Offset"
            case limit = "Limit"
            case secretNamespace = "SecretNamespace"
            case namePattern = "NamePattern"
            case sort = "Sort"
            case secretType = "SecretType"
        }
    }
    
    /// DescribeSecrets返回参数结构体
    public struct DescribeSecretsResponse: TCResponseModel {
        /// 总数目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// Secret列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [SecretItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}
