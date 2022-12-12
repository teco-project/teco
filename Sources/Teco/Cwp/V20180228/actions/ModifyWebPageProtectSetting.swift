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

extension Cwp {
    /// ModifyWebPageProtectSetting请求参数结构体
    public struct ModifyWebPageProtectSettingRequest: TCRequestModel {
        /// 需要操作的类型1 目录名称 2 防护文件类型
        public let modifyType: UInt64
        
        /// 提交值
        public let value: String
        
        /// 配置对应的protect_path
        public let id: String
        
        public init (modifyType: UInt64, value: String, id: String) {
            self.modifyType = modifyType
            self.value = value
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case modifyType = "ModifyType"
            case value = "Value"
            case id = "Id"
        }
    }
    
    /// ModifyWebPageProtectSetting返回参数结构体
    public struct ModifyWebPageProtectSettingResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改网站防护设置
    @inlinable
    public func modifyWebPageProtectSetting(_ input: ModifyWebPageProtectSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyWebPageProtectSettingResponse > {
        self.client.execute(action: "ModifyWebPageProtectSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改网站防护设置
    @inlinable
    public func modifyWebPageProtectSetting(_ input: ModifyWebPageProtectSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWebPageProtectSettingResponse {
        try await self.client.execute(action: "ModifyWebPageProtectSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
