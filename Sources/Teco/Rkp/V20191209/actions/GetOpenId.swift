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

extension Rkp {
    /// RPopenID查询
    ///
    /// 根据DevicceToken查询OpenID。
    @inlinable
    public func getOpenId(_ input: GetOpenIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetOpenIdResponse > {
        self.client.execute(action: "GetOpenId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// RPopenID查询
    ///
    /// 根据DevicceToken查询OpenID。
    @inlinable
    public func getOpenId(_ input: GetOpenIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOpenIdResponse {
        try await self.client.execute(action: "GetOpenId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetOpenId请求参数结构体
    public struct GetOpenIdRequest: TCRequestModel {
        /// dev临时token，通过sdk接口获取
        public let deviceToken: String
        
        /// 业务ID
        public let businessId: Int64
        
        /// 业务侧账号体系下的用户ID
        public let businessUserId: String?
        
        /// 平台：0-Android， 1-iOS， 2-web
        public let platform: Int64?
        
        /// 选项
        public let option: String?
        
        public init (deviceToken: String, businessId: Int64, businessUserId: String?, platform: Int64?, option: String?) {
            self.deviceToken = deviceToken
            self.businessId = businessId
            self.businessUserId = businessUserId
            self.platform = platform
            self.option = option
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceToken = "DeviceToken"
            case businessId = "BusinessId"
            case businessUserId = "BusinessUserId"
            case platform = "Platform"
            case option = "Option"
        }
    }
    
    /// GetOpenId返回参数结构体
    public struct GetOpenIdResponse: TCResponseModel {
        /// 设备ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let openId: String?
        
        /// 设备风险
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskInfo: [RiskInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case riskInfo = "RiskInfo"
            case requestId = "RequestId"
        }
    }
}
