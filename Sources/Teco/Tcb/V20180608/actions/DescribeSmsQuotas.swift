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

extension Tcb {
    /// 查询后付费短信资源量
    ///
    /// 查询后付费短信资源量
    /// 1 有免费包的返回SmsFreeQuota结构所有字段
    /// 2 没有免费包，有付费包，付费返回复用SmsFreeQuota结构，其中只有 TodayUsedQuota 字段有效
    /// 3 都没有返回为空数组
    @inlinable
    public func describeSmsQuotas(_ input: DescribeSmsQuotasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSmsQuotasResponse > {
        self.client.execute(action: "DescribeSmsQuotas", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询后付费短信资源量
    ///
    /// 查询后付费短信资源量
    /// 1 有免费包的返回SmsFreeQuota结构所有字段
    /// 2 没有免费包，有付费包，付费返回复用SmsFreeQuota结构，其中只有 TodayUsedQuota 字段有效
    /// 3 都没有返回为空数组
    @inlinable
    public func describeSmsQuotas(_ input: DescribeSmsQuotasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsQuotasResponse {
        try await self.client.execute(action: "DescribeSmsQuotas", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSmsQuotas请求参数结构体
    public struct DescribeSmsQuotasRequest: TCRequestModel {
        /// 环境ID
        public let envId: String
        
        public init (envId: String) {
            self.envId = envId
        }
        
        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
        }
    }
    
    /// DescribeSmsQuotas返回参数结构体
    public struct DescribeSmsQuotasResponse: TCResponseModel {
        /// 短信免费量信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let smsFreeQuotaList: [SmsFreeQuota]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case smsFreeQuotaList = "SmsFreeQuotaList"
            case requestId = "RequestId"
        }
    }
}
