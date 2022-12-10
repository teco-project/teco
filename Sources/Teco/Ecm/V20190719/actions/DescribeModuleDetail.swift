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

extension Ecm {
    /// 展示模块详细信息
    @inlinable
    public func describeModuleDetail(_ input: DescribeModuleDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeModuleDetailResponse > {
        self.client.execute(action: "DescribeModuleDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 展示模块详细信息
    @inlinable
    public func describeModuleDetail(_ input: DescribeModuleDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModuleDetailResponse {
        try await self.client.execute(action: "DescribeModuleDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeModuleDetail请求参数结构体
    public struct DescribeModuleDetailRequest: TCRequestModel {
        /// 模块ID，如em-qn46snq8。
        public let moduleId: String
        
        public init (moduleId: String) {
            self.moduleId = moduleId
        }
        
        enum CodingKeys: String, CodingKey {
            case moduleId = "ModuleId"
        }
    }
    
    /// DescribeModuleDetail返回参数结构体
    public struct DescribeModuleDetailResponse: TCResponseModel {
        /// 模块的详细信息，详细见数据结构中的ModuleInfo。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let module: Module
        
        /// 模块的统计信息，详细见数据结构中的ModuleCounterInfo。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let moduleCounter: ModuleCounter
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case moduleCounter = "ModuleCounter"
            case requestId = "RequestId"
        }
    }
}
