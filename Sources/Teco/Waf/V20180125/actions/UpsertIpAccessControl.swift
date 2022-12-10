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

extension Waf {
    /// Waf IP黑白名单Upsert接口
    @inlinable
    public func upsertIpAccessControl(_ input: UpsertIpAccessControlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpsertIpAccessControlResponse > {
        self.client.execute(action: "UpsertIpAccessControl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// Waf IP黑白名单Upsert接口
    @inlinable
    public func upsertIpAccessControl(_ input: UpsertIpAccessControlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpsertIpAccessControlResponse {
        try await self.client.execute(action: "UpsertIpAccessControl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpsertIpAccessControl请求参数结构体
    public struct UpsertIpAccessControlRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// ip 参数列表，json数组由ip，source，note，action，valid_ts组成。ip对应配置的ip地址，source固定为custom值，note为注释，action值42为黑名单，40为白名单，valid_ts为有效日期，值为秒级时间戳
        public let items: [String]
        
        /// clb-waf或者sparta-waf
        public let edition: String?
        
        /// 是否为多域名黑白名单
        public let sourceType: String?
        
        public init (domain: String, items: [String], edition: String?, sourceType: String?) {
            self.domain = domain
            self.items = items
            self.edition = edition
            self.sourceType = sourceType
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case items = "Items"
            case edition = "Edition"
            case sourceType = "SourceType"
        }
    }
    
    /// UpsertIpAccessControl返回参数结构体
    public struct UpsertIpAccessControlResponse: TCResponseModel {
        /// 添加或修改失败的条目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedItems: String?
        
        /// 添加或修改失败的数目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedCount: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case failedItems = "FailedItems"
            case failedCount = "FailedCount"
            case requestId = "RequestId"
        }
    }
}
