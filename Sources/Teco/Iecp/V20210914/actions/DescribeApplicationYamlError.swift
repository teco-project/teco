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

extension Iecp {
    /// 检查应用模板的Yaml配置
    ///
    /// 检查应用模板的Yaml配置
    @inlinable
    public func describeApplicationYamlError(_ input: DescribeApplicationYamlErrorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApplicationYamlErrorResponse > {
        self.client.execute(action: "DescribeApplicationYamlError", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 检查应用模板的Yaml配置
    ///
    /// 检查应用模板的Yaml配置
    @inlinable
    public func describeApplicationYamlError(_ input: DescribeApplicationYamlErrorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationYamlErrorResponse {
        try await self.client.execute(action: "DescribeApplicationYamlError", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApplicationYamlError请求参数结构体
    public struct DescribeApplicationYamlErrorRequest: TCRequestModel {
        /// Yaml配置
        public let yaml: String
        
        public init (yaml: String) {
            self.yaml = yaml
        }
        
        enum CodingKeys: String, CodingKey {
            case yaml = "Yaml"
        }
    }
    
    /// DescribeApplicationYamlError返回参数结构体
    public struct DescribeApplicationYamlErrorResponse: TCResponseModel {
        /// 是否通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let checkPass: Bool?
        
        /// 错误类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errType: Int64?
        
        /// 错误信息
        public let errInfo: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case checkPass = "CheckPass"
            case errType = "ErrType"
            case errInfo = "ErrInfo"
            case requestId = "RequestId"
        }
    }
}