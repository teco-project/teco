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

extension Live {
    /// 修改推流鉴权key
    ///
    /// 修改直播推流鉴权key
    @inlinable
    public func modifyLivePushAuthKey(_ input: ModifyLivePushAuthKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLivePushAuthKeyResponse > {
        self.client.execute(action: "ModifyLivePushAuthKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改推流鉴权key
    ///
    /// 修改直播推流鉴权key
    @inlinable
    public func modifyLivePushAuthKey(_ input: ModifyLivePushAuthKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLivePushAuthKeyResponse {
        try await self.client.execute(action: "ModifyLivePushAuthKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyLivePushAuthKey请求参数结构体
    public struct ModifyLivePushAuthKeyRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String
        
        /// 是否启用，0：关闭，1：启用。
        /// 不传表示不修改当前值。
        public let enable: Int64?
        
        /// 主鉴权key。
        /// 不传表示不修改当前值。
        public let masterAuthKey: String?
        
        /// 备鉴权key。
        /// 不传表示不修改当前值。
        public let backupAuthKey: String?
        
        /// 有效时间，单位：秒。
        public let authDelta: UInt64?
        
        public init (domainName: String, enable: Int64?, masterAuthKey: String?, backupAuthKey: String?, authDelta: UInt64?) {
            self.domainName = domainName
            self.enable = enable
            self.masterAuthKey = masterAuthKey
            self.backupAuthKey = backupAuthKey
            self.authDelta = authDelta
        }
        
        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case enable = "Enable"
            case masterAuthKey = "MasterAuthKey"
            case backupAuthKey = "BackupAuthKey"
            case authDelta = "AuthDelta"
        }
    }
    
    /// ModifyLivePushAuthKey返回参数结构体
    public struct ModifyLivePushAuthKeyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
