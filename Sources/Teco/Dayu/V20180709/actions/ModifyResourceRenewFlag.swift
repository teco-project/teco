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

extension Dayu {
    /// 修改资源自动续费标记
    ///
    /// 修改资源自动续费标记
    @inlinable
    public func modifyResourceRenewFlag(_ input: ModifyResourceRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyResourceRenewFlagResponse > {
        self.client.execute(action: "ModifyResourceRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改资源自动续费标记
    ///
    /// 修改资源自动续费标记
    @inlinable
    public func modifyResourceRenewFlag(_ input: ModifyResourceRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourceRenewFlagResponse {
        try await self.client.execute(action: "ModifyResourceRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyResourceRenewFlag请求参数结构体
    public struct ModifyResourceRenewFlagRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版；shield表示棋牌盾；bgp表示独享包；bgp-multip表示共享包；insurance表示保险包；staticpack表示三网套餐包）
        public let business: String
        
        /// 资源Id
        public let id: String
        
        /// 自动续费标记（0手动续费；1自动续费；2到期不续费）
        public let renewFlag: UInt64
        
        public init (business: String, id: String, renewFlag: UInt64) {
            self.business = business
            self.id = id
            self.renewFlag = renewFlag
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case renewFlag = "RenewFlag"
        }
    }
    
    /// ModifyResourceRenewFlag返回参数结构体
    public struct ModifyResourceRenewFlagResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }
}