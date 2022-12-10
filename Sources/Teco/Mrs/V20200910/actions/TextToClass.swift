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

extension Mrs {
    /// 文本分类接口
    ///
    /// 文本分类
    @inlinable
    public func textToClass(_ input: TextToClassRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TextToClassResponse > {
        self.client.execute(action: "TextToClass", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 文本分类接口
    ///
    /// 文本分类
    @inlinable
    public func textToClass(_ input: TextToClassRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToClassResponse {
        try await self.client.execute(action: "TextToClass", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TextToClass请求参数结构体
    public struct TextToClassRequest: TCRequestModel {
        /// 报告文本
        public let text: String
        
        /// 用户类型，新客户传1，老客户可不传
        public let userType: UInt64?
        
        public init (text: String, userType: UInt64?) {
            self.text = text
            self.userType = userType
        }
        
        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case userType = "UserType"
        }
    }
    
    /// TextToClass返回参数结构体
    public struct TextToClassResponse: TCResponseModel {
        /// 分类结果
        public let textTypeList: [TextType]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case textTypeList = "TextTypeList"
            case requestId = "RequestId"
        }
    }
}
