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

extension TCMpsError {
    public struct InvalidParameter: TCMpsErrorType {
        enum Code: String {
            case endTime = "InvalidParameter.EndTime"
            case exceededQuantityLimit = "InvalidParameter.ExceededQuantityLimit"
            case id = "InvalidParameter.Id"
            case input = "InvalidParameter.Input"
            case inputOutputId = "InvalidParameter.InputOutputId"
            case maxBandwidth = "InvalidParameter.MaxBandwidth"
            case name = "InvalidParameter.Name"
            case notFound = "InvalidParameter.NotFound"
            case output = "InvalidParameter.Output"
            case outputGroups = "InvalidParameter.OutputGroups"
            case outputId = "InvalidParameter.OutputId"
            case pageNum = "InvalidParameter.PageNum"
            case pageSize = "InvalidParameter.PageSize"
            case period = "InvalidParameter.Period"
            case pipeline = "InvalidParameter.Pipeline"
            case `protocol` = "InvalidParameter.Protocol"
            case sortType = "InvalidParameter.SortType"
            case startTime = "InvalidParameter.StartTime"
            case state = "InvalidParameter.State"
            case type = "InvalidParameter.Type"
            case other = "InvalidParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        public static var endTime: InvalidParameter {
            InvalidParameter(.endTime)
        }
        
        public static var exceededQuantityLimit: InvalidParameter {
            InvalidParameter(.exceededQuantityLimit)
        }
        
        public static var id: InvalidParameter {
            InvalidParameter(.id)
        }
        
        public static var input: InvalidParameter {
            InvalidParameter(.input)
        }
        
        public static var inputOutputId: InvalidParameter {
            InvalidParameter(.inputOutputId)
        }
        
        public static var maxBandwidth: InvalidParameter {
            InvalidParameter(.maxBandwidth)
        }
        
        public static var name: InvalidParameter {
            InvalidParameter(.name)
        }
        
        public static var notFound: InvalidParameter {
            InvalidParameter(.notFound)
        }
        
        public static var output: InvalidParameter {
            InvalidParameter(.output)
        }
        
        public static var outputGroups: InvalidParameter {
            InvalidParameter(.outputGroups)
        }
        
        public static var outputId: InvalidParameter {
            InvalidParameter(.outputId)
        }
        
        public static var pageNum: InvalidParameter {
            InvalidParameter(.pageNum)
        }
        
        public static var pageSize: InvalidParameter {
            InvalidParameter(.pageSize)
        }
        
        public static var period: InvalidParameter {
            InvalidParameter(.period)
        }
        
        public static var pipeline: InvalidParameter {
            InvalidParameter(.pipeline)
        }
        
        public static var `protocol`: InvalidParameter {
            InvalidParameter(.`protocol`)
        }
        
        public static var sortType: InvalidParameter {
            InvalidParameter(.sortType)
        }
        
        public static var startTime: InvalidParameter {
            InvalidParameter(.startTime)
        }
        
        public static var state: InvalidParameter {
            InvalidParameter(.state)
        }
        
        public static var type: InvalidParameter {
            InvalidParameter(.type)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
        
        public func asMpsError() -> TCMpsError {
            let code: TCMpsError.Code
            switch self.error {
            case .endTime: 
                code = .invalidParameter_EndTime
            case .exceededQuantityLimit: 
                code = .invalidParameter_ExceededQuantityLimit
            case .id: 
                code = .invalidParameter_Id
            case .input: 
                code = .invalidParameter_Input
            case .inputOutputId: 
                code = .invalidParameter_InputOutputId
            case .maxBandwidth: 
                code = .invalidParameter_MaxBandwidth
            case .name: 
                code = .invalidParameter_Name
            case .notFound: 
                code = .invalidParameter_NotFound
            case .output: 
                code = .invalidParameter_Output
            case .outputGroups: 
                code = .invalidParameter_OutputGroups
            case .outputId: 
                code = .invalidParameter_OutputId
            case .pageNum: 
                code = .invalidParameter_PageNum
            case .pageSize: 
                code = .invalidParameter_PageSize
            case .period: 
                code = .invalidParameter_Period
            case .pipeline: 
                code = .invalidParameter_Pipeline
            case .`protocol`: 
                code = .invalidParameter_Protocol
            case .sortType: 
                code = .invalidParameter_SortType
            case .startTime: 
                code = .invalidParameter_StartTime
            case .state: 
                code = .invalidParameter_State
            case .type: 
                code = .invalidParameter_Type
            case .other: 
                code = .invalidParameter
            }
            return TCMpsError(code, context: self.context)
        }
    }
}
