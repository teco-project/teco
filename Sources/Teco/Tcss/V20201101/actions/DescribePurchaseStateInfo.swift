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

extension Tcss {
    /// 查询容器安全服务已购买信息
    ///
    /// DescribePurchaseStateInfo 查询容器安全服务已购买信息
    @inlinable
    public func describePurchaseStateInfo(_ input: DescribePurchaseStateInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePurchaseStateInfoResponse > {
        self.client.execute(action: "DescribePurchaseStateInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询容器安全服务已购买信息
    ///
    /// DescribePurchaseStateInfo 查询容器安全服务已购买信息
    @inlinable
    public func describePurchaseStateInfo(_ input: DescribePurchaseStateInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurchaseStateInfoResponse {
        try await self.client.execute(action: "DescribePurchaseStateInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePurchaseStateInfo请求参数结构体
    public struct DescribePurchaseStateInfoRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribePurchaseStateInfo返回参数结构体
    public struct DescribePurchaseStateInfoResponse: TCResponseModel {
        /// 0：可申请试用可购买；1：只可购买(含试用审核不通过和试用过期)；2：试用生效中；3：专业版生效中；4：专业版过期
        public let state: Int64
        
        /// 总核数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let coresCnt: UInt64?
        
        /// 已购买核数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorizedCoresCnt: UInt64?
        
        /// 镜像数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageCnt: UInt64?
        
        /// 已授权镜像数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorizedImageCnt: UInt64?
        
        /// 已购买镜像授权数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let purchasedAuthorizedCnt: UInt64?
        
        /// 过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expirationTime: String?
        
        /// 0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费(用户设置)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let automaticRenewal: Int64?
        
        /// 试用期间赠送镜像授权数，可能会过期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let givenAuthorizedCnt: UInt64?
        
        /// 起始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let beginTime: String?
        
        /// 子状态(具体意义依据State字段而定)
        /// State为4时，有效值为: ISOLATE(隔离) DESTROED(已销毁)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subState: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case state = "State"
            case coresCnt = "CoresCnt"
            case authorizedCoresCnt = "AuthorizedCoresCnt"
            case imageCnt = "ImageCnt"
            case authorizedImageCnt = "AuthorizedImageCnt"
            case purchasedAuthorizedCnt = "PurchasedAuthorizedCnt"
            case expirationTime = "ExpirationTime"
            case automaticRenewal = "AutomaticRenewal"
            case givenAuthorizedCnt = "GivenAuthorizedCnt"
            case beginTime = "BeginTime"
            case subState = "SubState"
            case requestId = "RequestId"
        }
    }
}
