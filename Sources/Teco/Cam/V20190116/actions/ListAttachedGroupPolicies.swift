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

extension Cam {
    /// 查询用户组关联的策略列表
    ///
    /// 本接口（ListAttachedGroupPolicies）可用于查询用户组关联的策略列表。
    @inlinable
    public func listAttachedGroupPolicies(_ input: ListAttachedGroupPoliciesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListAttachedGroupPoliciesResponse > {
        self.client.execute(action: "ListAttachedGroupPolicies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户组关联的策略列表
    ///
    /// 本接口（ListAttachedGroupPolicies）可用于查询用户组关联的策略列表。
    @inlinable
    public func listAttachedGroupPolicies(_ input: ListAttachedGroupPoliciesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAttachedGroupPoliciesResponse {
        try await self.client.execute(action: "ListAttachedGroupPolicies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListAttachedGroupPolicies请求参数结构体
    public struct ListAttachedGroupPoliciesRequest: TCRequestModel {
        /// 用户组ID
        public let targetGroupId: UInt64
        
        /// 页码，默认值是 1，从 1 开始
        public let page: UInt64?
        
        /// 每页大小，默认值是 20
        public let rp: UInt64?
        
        /// 搜索关键字
        public let keyword: String?
        
        public init (targetGroupId: UInt64, page: UInt64?, rp: UInt64?, keyword: String?) {
            self.targetGroupId = targetGroupId
            self.page = page
            self.rp = rp
            self.keyword = keyword
        }
        
        enum CodingKeys: String, CodingKey {
            case targetGroupId = "TargetGroupId"
            case page = "Page"
            case rp = "Rp"
            case keyword = "Keyword"
        }
    }
    
    /// ListAttachedGroupPolicies返回参数结构体
    public struct ListAttachedGroupPoliciesResponse: TCResponseModel {
        /// 策略总数
        public let totalNum: UInt64
        
        /// 策略列表
        public let list: [AttachPolicyInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case list = "List"
            case requestId = "RequestId"
        }
    }
}