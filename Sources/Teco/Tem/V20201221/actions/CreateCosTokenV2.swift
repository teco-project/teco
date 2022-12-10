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

extension Tem {
    /// 生成Cos临时秘钥V2
    ///
    /// 生成Cos临时秘钥
    @inlinable
    public func createCosTokenV2(_ input: CreateCosTokenV2Request, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCosTokenV2Response > {
        self.client.execute(action: "CreateCosTokenV2", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 生成Cos临时秘钥V2
    ///
    /// 生成Cos临时秘钥
    @inlinable
    public func createCosTokenV2(_ input: CreateCosTokenV2Request, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCosTokenV2Response {
        try await self.client.execute(action: "CreateCosTokenV2", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCosTokenV2请求参数结构体
    public struct CreateCosTokenV2Request: TCRequestModel {
        /// 服务ID
        public let serviceId: String
        
        /// 包名
        public let pkgName: String
        
        /// optType 1上传  2查询
        public let optType: Int64
        
        /// 来源 channel
        public let sourceChannel: Int64?
        
        /// 充当deployVersion入参
        public let timeVersion: String?
        
        public init (serviceId: String, pkgName: String, optType: Int64, sourceChannel: Int64?, timeVersion: String?) {
            self.serviceId = serviceId
            self.pkgName = pkgName
            self.optType = optType
            self.sourceChannel = sourceChannel
            self.timeVersion = timeVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case pkgName = "PkgName"
            case optType = "OptType"
            case sourceChannel = "SourceChannel"
            case timeVersion = "TimeVersion"
        }
    }
    
    /// CreateCosTokenV2返回参数结构体
    public struct CreateCosTokenV2Response: TCResponseModel {
        /// 成功时为CosToken对象，失败为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CosToken
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}