function varargout = gui8(varargin)
% GUI8 MATLAB code for gui8.fig
%      GUI8, by itself, creates a new GUI8 or raises the existing
%      singleton*.
%
%      H = GUI8 returns the handle to a new GUI8 or the handle to
%      the existing singleton*.
%
%      GUI8('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI8.M with the given input arguments.
%
%      GUI8('Property','Value',...) creates a new GUI8 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui8_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui8_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui8

% Last Modified by GUIDE v2.5 27-Apr-2016 20:27:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui8_OpeningFcn, ...
                   'gui_OutputFcn',  @gui8_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui8 is made visible.
function gui8_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui8 (see VARARGIN)

% Choose default command line output for gui8
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui8 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui8_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
X = getappdata(0,'evalue1');
set(handles.text3, 'String', X);

Y = getappdata(0,'evalue10');
set(handles.text5, 'String', Y);

Z = getappdata(0,'evalue15');
set(handles.text7, 'String', Z);
