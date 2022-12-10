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

extension Iotvideo {
    /// 查询自定义物模型数据类型
    ///
    /// 本接口（DescribeIotDataType）用于查询自定义的物模型数据类型。
    @inlinable
    public func describeIotDataType(_ input: DescribeIotDataTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIotDataTypeResponse > {
        self.client.execute(action: "DescribeIotDataType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询自定义物模型数据类型
    ///
    /// 本接口（DescribeIotDataType）用于查询自定义的物模型数据类型。
    @inlinable
    public func describeIotDataType(_ input: DescribeIotDataTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotDataTypeResponse {
        try await self.client.execute(action: "DescribeIotDataType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeIotDataType请求参数结构体
    public struct DescribeIotDataTypeRequest: TCRequestModel {
        /// 自定义数据类型的标识符，为空则返回全量自定义类型的列表
        public let typeId: String?
        
        public init (typeId: String?) {
            self.typeId = typeId
        }
        
        enum CodingKeys: String, CodingKey {
            case typeId = "TypeId"
        }
    }
    
    /// DescribeIotDataType返回参数结构体
    public struct DescribeIotDataTypeResponse: TCResponseModel {
        /// 自定义数据类型，json格式的字符串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
