function varargout = qui2(varargin)
% QUI2 MATLAB code for qui2.fig
%      QUI2, by itself, creates a new QUI2 or raises the existing
%      singleton*.
%
%      H = QUI2 returns the handle to a new QUI2 or the handle to
%      the existing singleton*.
%
%      QUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUI2.M with the given input arguments.
%
%      QUI2('Property','Value',...) creates a new QUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before qui2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to qui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help qui2

% Last Modified by GUIDE v2.5 22-Apr-2016 18:27:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @qui2_OpeningFcn, ...
                   'gui_OutputFcn',  @qui2_OutputFcn, ...
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


% --- Executes just before qui2 is made visible.
function qui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to qui2 (see VARARGIN)

% Choose default command line output for qui2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes qui2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = qui2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
B = getappdata(0,'evalue1');
set(handles.text3, 'String', B);
C=getappdata(0,'evalue2');

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
add=get(handles.buttongroup,'SelectedObject');
Selection=get(add,'String');
Z=strcmp(Selection,'Yes');
s= getappdata(0,'evalue3');
m= getappdata(0,'evalue4');
l= getappdata(0,'evalue5');
C=getappdata(0,'evalue2');
if(Z==1);
    b=[s,m,l,C];
    b
    dlmwrite('a_size.txt',b,'newline','pc','-append');
end
gui3;
close(qui2);
