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

extension Eb {
    /// 检查转换器
    ///
    /// 用于在ETL配置页面, 测试规则和数据.
    @inlinable
    public func checkTransformation(_ input: CheckTransformationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckTransformationResponse > {
        self.client.execute(action: "CheckTransformation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 检查转换器
    ///
    /// 用于在ETL配置页面, 测试规则和数据.
    @inlinable
    public func checkTransformation(_ input: CheckTransformationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckTransformationResponse {
        try await self.client.execute(action: "CheckTransformation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckTransformation请求参数结构体
    public struct CheckTransformationRequest: TCRequestModel {
        /// 待处理的json字符串
        public let input: String
        
        /// 一个转换规则列表
        public let transformations: [Transformation]
        
        public init (input: String, transformations: [Transformation]) {
            self.input = input
            self.transformations = transformations
        }
        
        enum CodingKeys: String, CodingKey {
            case input = "Input"
            case transformations = "Transformations"
        }
    }
    
    /// CheckTransformation返回参数结构体
    public struct CheckTransformationResponse: TCResponseModel {
        /// 经过Transformations处理之后的数据
        public let output: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case output = "Output"
            case requestId = "RequestId"
        }
    }
}