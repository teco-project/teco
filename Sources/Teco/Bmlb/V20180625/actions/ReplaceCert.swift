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

extension Bmlb {
    /// 更新黑石负载均衡证书
    ///
    /// 更新黑石负载均衡证书。
    @inlinable
    public func replaceCert(_ input: ReplaceCertRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReplaceCertResponse > {
        self.client.execute(action: "ReplaceCert", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新黑石负载均衡证书
    ///
    /// 更新黑石负载均衡证书。
    @inlinable
    public func replaceCert(_ input: ReplaceCertRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceCertResponse {
        try await self.client.execute(action: "ReplaceCert", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ReplaceCert请求参数结构体
    public struct ReplaceCertRequest: TCRequestModel {
        /// 要被替换的证书ID
        public let oldCertId: String
        
        /// 证书内容
        public let newCert: String
        
        /// 证书名称
        public let newAlias: String?
        
        /// 私钥内容，证书类型为SVR时不需要传递
        public let newKey: String?
        
        /// 是否删除旧证书，0 表示不删除，1 表示删除
        public let deleteOld: UInt64?
        
        public init (oldCertId: String, newCert: String, newAlias: String?, newKey: String?, deleteOld: UInt64?) {
            self.oldCertId = oldCertId
            self.newCert = newCert
            self.newAlias = newAlias
            self.newKey = newKey
            self.deleteOld = deleteOld
        }
        
        enum CodingKeys: String, CodingKey {
            case oldCertId = "OldCertId"
            case newCert = "NewCert"
            case newAlias = "NewAlias"
            case newKey = "NewKey"
            case deleteOld = "DeleteOld"
        }
    }
    
    /// ReplaceCert返回参数结构体
    public struct ReplaceCertResponse: TCResponseModel {
        /// 新证书ID。
        public let newCertId: String
        
        /// 旧证书ID。
        public let oldCertId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case newCertId = "NewCertId"
            case oldCertId = "OldCertId"
            case requestId = "RequestId"
        }
    }
}
