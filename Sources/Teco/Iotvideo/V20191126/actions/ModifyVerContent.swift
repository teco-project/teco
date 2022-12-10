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

extension Iotvideo {
    /// 编辑版本描述信息
    ///
    /// 编辑版本描述信息
    @inlinable
    public func modifyVerContent(_ input: ModifyVerContentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyVerContentResponse > {
        self.client.execute(action: "ModifyVerContent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 编辑版本描述信息
    ///
    /// 编辑版本描述信息
    @inlinable
    public func modifyVerContent(_ input: ModifyVerContentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVerContentResponse {
        try await self.client.execute(action: "ModifyVerContent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyVerContent请求参数结构体
    public struct ModifyVerContentRequest: TCRequestModel {
        /// 产品id
        public let productId: String
        
        /// 需要修改的版本号
        public let otaVersion: String
        
        /// 操作人,字符长度<=64
        public let `operator`: String?
        
        /// 备注信息
        public let remark: String?
        
        /// 版本发布的描述信息，需要国际化，可以为空
        public let contents: Contents
        
        public init (productId: String, otaVersion: String, `operator`: String?, remark: String?, contents: Contents) {
            self.productId = productId
            self.otaVersion = otaVersion
            self.`operator` = `operator`
            self.remark = remark
            self.contents = contents
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case otaVersion = "OtaVersion"
            case `operator` = "Operator"
            case remark = "Remark"
            case contents = "Contents"
        }
    }
    
    /// ModifyVerContent返回参数结构体
    public struct ModifyVerContentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}